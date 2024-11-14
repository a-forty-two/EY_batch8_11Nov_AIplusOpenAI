---
lab:
    title: 'Generate images with a DALL-E model'
---

# Generate images with a DALL-E model

The Azure OpenAI Service includes an image-generation model named DALL-E. You can use this model to submit natural language prompts that describe a desired image, and the model will generate an original image based on the description you provide.

In this exercise, you'll use a DALL-E version 3 model to generate images based on natural language prompts.

This exercise will take approximately **25** minutes.

## Provision an Azure OpenAI resource

Before you can use Azure OpenAI to generate images, you must provision an Azure OpenAI resource in your Azure subscription. The resource must be in a region where DALL-E models are supported.

1. Sign into the **Azure portal** at `https://portal.azure.com`.
2. Create an **Azure OpenAI** resource with the following settings:
    - **Subscription**: *Select an Azure subscription that has been approved for access to the Azure OpenAI service, including DALL-E*
    - **Resource group**: *Choose or create a resource group*
    - **Region**: *Choose either **East US** or **Sweden Central***\*
    - **Name**: *A unique name of your choice*
    - **Pricing tier**: Standard S0

    > \* DALL-E 3 models are only available in Azure OpenAI service resources in the **East US** and **Sweden Central** regions.

3. Wait for deployment to complete. Then go to the deployed Azure OpenAI resource in the Azure portal.

## Explore image-generation in the DALL-E playground

You can use the DALL-E playground in **Azure OpenAI Studio** to experiment with image-generation.

1. In the Azure portal, on the **Overview** page for your Azure OpenAI resource, use the **Explore** button to open Azure OpenAI Studio in a new browser tab. Alternatively, navigate to [Azure OpenAI Studio](https://oai.azure.com) directly at `https://oai.azure.com`.
2. In the **Playground** section, select the **DALL-E** playground. A deployment of the DALL-E model named *Dalle3* will be created automatically.
3. In the **Prompt** box, enter a description of an image you'd like to generate. For example, `An elephant on a skateboard` Then select **Generate** and view the image that is generated.

    ![The DALL-E Playground in Azure OpenAI Studio with a generated image.](../media/dall-e-playground.png)

4. Modify the prompt to provide a more specific description. For example `An elephant on a skateboard in the style of Picasso`. Then generate the new image and review the results.

    ![The DALL-E Playground in Azure OpenAI Studio with two generated images.](../media/dall-e-playground-new-image.png)

### Execute the notebook "Image Generation.ipynb".

1. Open the notebook Image_generation.ipynb and replace the following values with your OpenAI model values in the application.
        (your_azure_oai_endpoint)
        (your_azure_oai_key)
        (your_azure_oai_deployment)

2. Execute the notebook after making the changes and observe the output.

3. When prompted, enter a description for an image. For example, *A giraffe flying a kite*.

4. Wait for the image to be generated - a hyperlink will be displayed in the terminal pane. Then select the hyperlink to open a new rowser tab and review the image that was generated.

   > **TIP**: If the app doesn't return a response, wait a minute and try again. Newly deployed resources can take up to 5 minutes to become available.



