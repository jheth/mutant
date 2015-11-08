module Mutant
  class Reporter
    class Hash
      class Printer
        # Printer for mutation config
        class Config < self

          # Report configuration
          #
          # @param [Mutant::Config] config
          #
          # @return [undefined]
          #
          # @api private
          def run
            matcher = object.matcher_config.inspect
            # #<Mutant::Matcher::Config match_expressions: [Rumble::Loop]>
            # Parse out expression [...]
            expression = matcher.scan(/\[<Mutant::Expression: ([\w:,\*:\s]+)>\]/).flatten.first
            expression ||= matcher

            {
              matcher: expression,
              integration: object.integration.name,
              expect_coverage: object.expected_coverage.inspect,
              jobs: object.jobs,
              includes: object.includes.inspect,
              requires: object.requires.inspect
            }
          end

        end # Config
      end # Printer
    end # CLI
  end # Reporter
end # Mutant
