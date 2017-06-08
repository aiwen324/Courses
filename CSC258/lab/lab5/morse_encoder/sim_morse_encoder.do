vlib work
vlog -timescale 1ns/1ns morse_encoder.v
vsim morse_encoder_control
log {/*}
add wave {/*}

# module morse_encoder_control(m_out, m_enable, m_clear, m_clock, m_select);

# Alternating clock
force {m_clock} 0 0, 1 20 -repeat 40

# do reset first to give default values to bit stored in register
force {m_clear} 0
run 2ns
force {m_clear} 1
run 2ns


# test look up table
force {m_select} 010
# expect pattern=10_1011_1000_0000

# test that rate divider works properly in controlling enable in shifter
# expect to see no shift at all for a duration of 1000ns
force {m_enable} 1
run 1000ns