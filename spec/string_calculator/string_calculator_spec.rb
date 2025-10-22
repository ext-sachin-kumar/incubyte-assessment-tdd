require 'string_calculator'

RSpec.describe StringCalculator do
  describe '.add' do
    context "when string is empty" do
      it 'returns 0 ' do
        expect(StringCalculator.add('')).to eq(0)
      end
    end

    context 'when only single number is passed' do
      it 'returns sum' do
        expect(StringCalculator.add('10')).to eq(10)
        expect(StringCalculator.add('2')).to eq(2)
        expect(StringCalculator.add('100')).to eq(100)
      end
    end

    context "when numbers are separated by comma" do
      it "return sum" do
        expect(StringCalculator.add("1,5")).to eq(6)
        expect(StringCalculator.add("1,100")).to eq(101)
        expect(StringCalculator.add("1,2,3,4,5")).to eq(15)
      end
    end

    context 'when newlines are used' do 
      it 'return the sum handling newlines as seperator' do
        expect(StringCalculator.add("1\n2,3")).to eq(6)
        expect(StringCalculator.add("4\n5\n6")).to eq(15)
      end
    end

    context 'when delimiter are used' do
      context 'should handle different delimiter' do 
        it 'return sum' do
          expect(StringCalculator.add("//;\n1;2")).to eq(3)
          expect(StringCalculator.add("//|\n1|21|1")).to eq(23)
          expect(StringCalculator.add("//_\n1_2_3")).to eq(6)
        end
      end
    end

    context 'when negative number are used' do
      it 'raise an error' do
        # expect { StringCalculator.add('1,-2,3') }
        #   .to raise_error('negative numbers not allowed -2')

        # expect { StringCalculator.add('1,-2,-5,3') }
        #   .to raise_error('negative numbers not allowed -2,-5')

        expect { StringCalculator.add('1,-2,-5\n3') }
          .to raise_error('negative numbers not allowed -2,-5')
      end
    end

    context 'when no numbers are used' do
      it 'returns 0' do
        expect(StringCalculator.add(nil)).to eq(0)
      end
    end
  end
end