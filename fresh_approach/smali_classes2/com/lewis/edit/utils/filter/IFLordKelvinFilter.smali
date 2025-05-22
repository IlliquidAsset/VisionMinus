.class public Lcom/lewis/edit/utils/filter/IFLordKelvinFilter;
.super Lcom/lewis/edit/utils/filter/IFImageFilter;
.source "IFLordKelvinFilter.java"


# static fields
.field private static final SHADER:Ljava/lang/String; = "precision lowp float;\n \n varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2;\n \n void main()\n {\n     vec3 texel = texture2D(inputImageTexture, textureCoordinate).rgb;\n     \n     vec2 lookup;\n     lookup.y = .5;\n     \n     lookup.x = texel.r;\n     texel.r = texture2D(inputImageTexture2, lookup).r;\n     \n     lookup.x = texel.g;\n     texel.g = texture2D(inputImageTexture2, lookup).g;\n     \n     lookup.x = texel.b;\n     texel.b = texture2D(inputImageTexture2, lookup).b;\n     \n     gl_FragColor = vec4(texel, 1.0);\n }\n"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "precision lowp float;\n \n varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2;\n \n void main()\n {\n     vec3 texel = texture2D(inputImageTexture, textureCoordinate).rgb;\n     \n     vec2 lookup;\n     lookup.y = .5;\n     \n     lookup.x = texel.r;\n     texel.r = texture2D(inputImageTexture2, lookup).r;\n     \n     lookup.x = texel.g;\n     texel.g = texture2D(inputImageTexture2, lookup).g;\n     \n     lookup.x = texel.b;\n     texel.b = texture2D(inputImageTexture2, lookup).b;\n     \n     gl_FragColor = vec4(texel, 1.0);\n }\n"

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/lewis/edit/utils/filter/IFImageFilter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Lcom/lewis/edit/utils/filter/IFLordKelvinFilter;->setRes()V

    return-void
.end method

.method private setRes()V
    .locals 1

    .line 43
    sget v0, Lcom/lewis/edit/R$drawable;->kelvin_map:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/utils/filter/IFLordKelvinFilter;->addInputTexture(I)V

    return-void
.end method
