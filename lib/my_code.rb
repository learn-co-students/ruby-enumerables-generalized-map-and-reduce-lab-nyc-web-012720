def make_sandwich(element1, element2)
  base = "A #{element1} and #{element2}"
  yield(base)
end

make_sandwich("Creamy peanut butter", "glittering sense of accomplishment") { |b| "#{b} on wheat" }
 
# Bueno!
make_sandwich("Creamy peanut butter", "glittering sense of accomplishment") { |b| "#{b} on tortilla" }
 
# Lewis Carroll's Kitchen
make_sandwich("Creamy peanut butter", "glittering sense of accomplishment") { |b| "#{b.reverse} on #{"bread".reverse}" }