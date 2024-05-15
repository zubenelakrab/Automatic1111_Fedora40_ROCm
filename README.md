# Install Stable Diffusion(Automatic1111) in Fedora 40 + ROCm 6.1.1 (Tested on AMD 7900 XT)

Follow these steps to install Stable Diffusion (Automatic1111) on Fedora 40 with ROCm 6.1.1, tested on AMD 7900 XT.

1. **Install conda:**
    ```bash
    # Run this command in your terminal
    # Make sure you have conda installed beforehand
    conda create -n sd python=3.11
    ```

2. **Activate the conda environment:**
    ```bash
    # Activate the environment
    conda activate sd
    ```

3. **Clone the Stable Diffusion repository:**
    ```bash
    # Clone the repository
    git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git
    ```

4. **Navigate to the cloned repository:**
    ```bash
    # Change directory to the cloned repository
    cd stable-diffusion-webui
    ```

5. **Install PyTorch with ROCm support:**
    ```bash
    # Install PyTorch with ROCm support
    pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/nightly/rocm6.1
    ```

6. **Install additional requirements:**
    ```bash
    # Install additional requirements
    pip install -r requirements.txt
    ```

7. **Launch Stable Diffusion:**
    ```bash
    # Launch Stable Diffusion
    python launch.py --no-half --precision full
    ```

8. **Enjoy!**

