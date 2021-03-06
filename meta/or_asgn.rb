Mutant::Meta::Example.add do
  source 'a ||= 1'

  singleton_mutations
  mutation 'a__mutant__ ||= 1'
  mutation 'a ||= nil'
  mutation 'a ||= self'
  mutation 'a ||= 0'
  mutation 'a ||= -1'
  mutation 'a ||= 2'
end

Mutant::Meta::Example.add do
  source '@a ||= 1'

  singleton_mutations
  mutation '@a ||= nil'
  mutation '@a ||= self'
  mutation '@a ||= 0'
  mutation '@a ||= -1'
  mutation '@a ||= 2'
end

Mutant::Meta::Example.add do
  source '@a ||= self.bar'

  singleton_mutations
  mutation '@a ||= nil'
  mutation '@a ||= self'
  mutation '@a ||= bar'
end

Mutant::Meta::Example.add do
  source 'foo[:bar] ||= 1'

  singleton_mutations
  mutation 'foo[:bar] ||= nil'
  mutation 'foo[:bar] ||= self'
  mutation 'foo[:bar] ||= 0'
  mutation 'foo[:bar] ||= -1'
  mutation 'foo[:bar] ||= 2'
end
