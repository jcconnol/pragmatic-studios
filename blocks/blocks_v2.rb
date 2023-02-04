def run_my_block
    puts "Starting method..."
    yield if block_given?
    puts "back in method"
end

run_my_block

run_my_block do
    puts "running block"
end