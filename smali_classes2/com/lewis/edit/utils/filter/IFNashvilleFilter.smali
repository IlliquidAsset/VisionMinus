.class public Lcom/lewis/edit/utils/filter/IFNashvilleFilter;
.super Lcom/lewis/edit/utils/filter/IFImageFilter;
.source "IFNashvilleFilter.java"


# static fields
.field private static final SHADER:Ljava/lang/String; = "precision lowp float;\n \n varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2;\n \n void main()\n {\n     vec3 texel = texture2D(inputImageTexture, textureCoordinate).rgb;\n     texel = vec3(\n                  texture2D(inputImageTexture2, vec2(texel.r, .16666)).r,\n                  texture2D(inputImageTexture2, vec2(texel.g, .5)).g,\n                  texture2D(inputImageTexture2, vec2(texel.b, .83333)).b);\n     gl_FragColor = vec4(texel, 1.0);\n }\n"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "precision lowp float;\n \n varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2;\n \n void main()\n {\n     vec3 texel = texture2D(inputImageTexture, textureCoordinate).rgb;\n     texel = vec3(\n                  texture2D(inputImageTexture2, vec2(texel.r, .16666)).r,\n                  texture2D(inputImageTexture2, vec2(texel.g, .5)).g,\n                  texture2D(inputImageTexture2, vec2(texel.b, .83333)).b);\n     gl_FragColor = vec4(texel, 1.0);\n }\n"

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/lewis/edit/utils/filter/IFImageFilter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Lcom/lewis/edit/utils/filter/IFNashvilleFilter;->setRes()V

    return-void
.end method

.method private setRes()V
    .locals 1

    .line 34
    sget v0, Lcom/lewis/edit/R$drawable;->nashville_map:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/utils/filter/IFNashvilleFilter;->addInputTexture(I)V

    return-void
.end method
