server="ai.ku.edu.tr/"
if !isdir("data/demo")
    info("Downloading sample questions and images from CLEVR dataset...")
    download(server*"data/mac-network/demo.tar.gz","demo.tar.gz")
    run(`tar -xzf demo.tar.gz`)
    rm("demo.tar.gz")
end
if !isfile("models/macnet.jld")
    info("Downloading pre-trained model from our servers...")
    download(server*"models/mac-network/demo_model.jld","models/macnet.jld")
end
