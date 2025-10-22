# String Calculator TDD (Ruby)

This is a Ruby implementation of the **String Calculator** following **Test-Driven Development (TDD)** principles using RSpec.

---

### Features

- Returns `0` for an empty string or Null value.
- Handles a single number.
- Sums numbers separated by commas.
- Handle newlines (`\n`) as separators in addition to commas.
- Allows custom delimiters using the syntax: `//[delimiter]\n[numbers]`.
- Raise an error when negative numbers are given.

---

### Example Usage

```ruby
require_relative 'lib/string_calculator'

StringCalculator.add("")          # => 0
StringCalculator.add("10") # => 10
StringCalculator.add("1,2,3,4,5") # => 15
StringCalculator.add("1\n2,3") # => 6
StringCalculator.add("//;\n1;2") # => 3
StringCalculator.add("//_\n1_2_3") # => 6
# Negative numbers
StringCalculator.add("1,-2,3")    # => raises "negative numbers not allowed -2"
```

### Installation

```bash
git clone https://github.com/ext-sachin-kumar/incubyte-assessment-tdd
cd incubyte_assesment-tdd
```
### install dependencies
```bash
bundle install
```

### Run all test
```bash
bundle exec rspec
```


##### Commit History / Steps
1. **Initial Project Setup**
2. **Empty String Handling**
3. **Single Number**
4. **Two Numbers**
5. **Multiple Numbers**
6. **Newline Delimiters**
7. **Custom Delimiters**
8. **Negative Numbers**
10. **Refactor**
11. **Documentation**
