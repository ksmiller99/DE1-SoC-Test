-- Kevin Miller
-- CMPT-281
-- HW7 - One Bit ALU
-- 2013-04-18

-- Op Codes:
-- a PLUS b  - 000
-- a AND b   - 001
-- a OR b    - 010
-- NOT B     - 011
-- a MINUS b - 100

Entity OneBitALU IS
    PORT(
        -- inputs and outputs
        a, b            : IN BIT;   -- data inputs
        fout            : OUT BIT;  -- data output
        ct0, ct1, ct2   : IN BIT;   -- control signals; ct2 is Add'/Subtract signal only
        cout            : OUT BIT   -- carry out

    );

    --aliases
    ALIAS cin IS ct2;   -- cin input to adder is same signal as ct2

END OneBitALU;

ARCHITECTURE Behaivior OF OneBitALU IS
    -- internal signals

    -- control
    SIGNAL ct0N     : BIT;  -- NOT ct0
    SIGNAL ct1N     : BIT;  -- NOT ct1
    SIGNAL ct2N     : BIT;  -- NOT ct2

    -- adder signals
    SIGNAL aPb      : BIT;  -- a PLUS b
    SIGNAL g0, p0   : BIT;  -- adder look-ahead sub-values
    SIGNAL bXOcin   : BIT;  -- b XOR ct2(cin)

    -- other operations
    SIGNAL bN       : BIT;  -- NOT b
    SIGNAL aAb      : BIT;  -- a AND b
    SIGNAL aOb      : BIT;  -- a OR b

    -- output selectors
    SIGNAL addSel   : BIT;  -- output from adder/subtractor
    SIGNAL andSel   : BIT;  -- output from AND function
    SIGNAL orSel    : BIT;  -- output from OR function
    SIGNAL bNSel    : BIT;  -- output from b NOT function


BEGIN
    -- control signals
    ct0N <= NOT ct0;
    ct1N <= NOT ct1;
    ct2N <= NOT ct2;

    -- adder/subtractor signals
    bXOcin <= b XOR cin;
    g0     <= (a AND bXOcin);
    p0     <= (a XOR bXOcin);
    aPb    <= (cin XOR p0);
    cout   <= ((cin AND p0) OR g0);

    -- other opcode signals
    bN  <= NOT b;
    aAb <= a AND b;
    aOb <= a OR b;

    -- function select signals
    addSel <= (aPb AND          ct1N AND ct0N); -- results of add/subtract
    andSel <= (aAb AND ct2N AND ct1N AND ct0);  -- a AND b
    orSel  <= (aOb AND ct2N AND ct1  AND ct0N); -- a OR b
    bNSel  <= (bN  AND ct2N AND ct1  AND ct0);  -- NOT b

    fout <=
        addSel OR -- results of add/subtract
        andSel OR -- a AND b
        orSel  OR -- a OR b
        bNSel;    -- NOT b

END Behaivior;

