function SecondOrderImpulse(omega,zeta)
num=[0 0 omega^2];
den=[1 2*zeta*omega omega^2];
sys=tf(num, den)
impulse(sys)
end
