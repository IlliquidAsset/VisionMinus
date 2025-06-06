.class public Lcom/lewis/edit/utils/filter/IFToasterFilter;
.super Lcom/lewis/edit/utils/filter/IFImageFilter;
.source "IFToasterFilter.java"


# static fields
.field private static final SHADER:Ljava/lang/String; = "precision lowp float;\n \n varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2; //toasterMetal\n uniform sampler2D inputImageTexture3; //toasterSoftlight\n uniform sampler2D inputImageTexture4; //toasterCurves\n uniform sampler2D inputImageTexture5; //toasterOverlayMapWarm\n uniform sampler2D inputImageTexture6; //toasterColorshift\n \n void main()\n {\n     lowp vec3 texel;\n     mediump vec2 lookup;\n     vec2 blue;\n     vec2 green;\n     vec2 red;\n     lowp vec4 tmpvar_1;\n     tmpvar_1 = texture2D (inputImageTexture, textureCoordinate);\n     texel = tmpvar_1.xyz;\n     lowp vec4 tmpvar_2;\n     tmpvar_2 = texture2D (inputImageTexture2, textureCoordinate);\n     lowp vec2 tmpvar_3;\n     tmpvar_3.x = tmpvar_2.x;\n     tmpvar_3.y = tmpvar_1.x;\n     texel.x = texture2D (inputImageTexture3, tmpvar_3).x;\n     lowp vec2 tmpvar_4;\n     tmpvar_4.x = tmpvar_2.y;\n     tmpvar_4.y = tmpvar_1.y;\n     texel.y = texture2D (inputImageTexture3, tmpvar_4).y;\n     lowp vec2 tmpvar_5;\n     tmpvar_5.x = tmpvar_2.z;\n     tmpvar_5.y = tmpvar_1.z;\n     texel.z = texture2D (inputImageTexture3, tmpvar_5).z;\n     red.x = texel.x;\n     red.y = 0.16666;\n     green.x = texel.y;\n     green.y = 0.5;\n     blue.x = texel.z;\n     blue.y = 0.833333;\n     texel.x = texture2D (inputImageTexture4, red).x;\n     texel.y = texture2D (inputImageTexture4, green).y;\n     texel.z = texture2D (inputImageTexture4, blue).z;\n     mediump vec2 tmpvar_6;\n     tmpvar_6 = ((2.0 * textureCoordinate) - 1.0);\n     mediump vec2 tmpvar_7;\n     tmpvar_7.x = dot (tmpvar_6, tmpvar_6);\n     tmpvar_7.y = texel.x;\n     lookup = tmpvar_7;\n     texel.x = texture2D (inputImageTexture5, tmpvar_7).x;\n     lookup.y = texel.y;\n     texel.y = texture2D (inputImageTexture5, lookup).y;\n     lookup.y = texel.z;\n     texel.z = texture2D (inputImageTexture5, lookup).z;\n     red.x = texel.x;\n     green.x = texel.y;\n     blue.x = texel.z;\n     texel.x = texture2D (inputImageTexture6, red).x;\n     texel.y = texture2D (inputImageTexture6, green).y;\n     texel.z = texture2D (inputImageTexture6, blue).z;\n     lowp vec4 tmpvar_8;\n     tmpvar_8.w = 1.0;\n     tmpvar_8.xyz = texel;\n     gl_FragColor = tmpvar_8;\n }"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "precision lowp float;\n \n varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2; //toasterMetal\n uniform sampler2D inputImageTexture3; //toasterSoftlight\n uniform sampler2D inputImageTexture4; //toasterCurves\n uniform sampler2D inputImageTexture5; //toasterOverlayMapWarm\n uniform sampler2D inputImageTexture6; //toasterColorshift\n \n void main()\n {\n     lowp vec3 texel;\n     mediump vec2 lookup;\n     vec2 blue;\n     vec2 green;\n     vec2 red;\n     lowp vec4 tmpvar_1;\n     tmpvar_1 = texture2D (inputImageTexture, textureCoordinate);\n     texel = tmpvar_1.xyz;\n     lowp vec4 tmpvar_2;\n     tmpvar_2 = texture2D (inputImageTexture2, textureCoordinate);\n     lowp vec2 tmpvar_3;\n     tmpvar_3.x = tmpvar_2.x;\n     tmpvar_3.y = tmpvar_1.x;\n     texel.x = texture2D (inputImageTexture3, tmpvar_3).x;\n     lowp vec2 tmpvar_4;\n     tmpvar_4.x = tmpvar_2.y;\n     tmpvar_4.y = tmpvar_1.y;\n     texel.y = texture2D (inputImageTexture3, tmpvar_4).y;\n     lowp vec2 tmpvar_5;\n     tmpvar_5.x = tmpvar_2.z;\n     tmpvar_5.y = tmpvar_1.z;\n     texel.z = texture2D (inputImageTexture3, tmpvar_5).z;\n     red.x = texel.x;\n     red.y = 0.16666;\n     green.x = texel.y;\n     green.y = 0.5;\n     blue.x = texel.z;\n     blue.y = 0.833333;\n     texel.x = texture2D (inputImageTexture4, red).x;\n     texel.y = texture2D (inputImageTexture4, green).y;\n     texel.z = texture2D (inputImageTexture4, blue).z;\n     mediump vec2 tmpvar_6;\n     tmpvar_6 = ((2.0 * textureCoordinate) - 1.0);\n     mediump vec2 tmpvar_7;\n     tmpvar_7.x = dot (tmpvar_6, tmpvar_6);\n     tmpvar_7.y = texel.x;\n     lookup = tmpvar_7;\n     texel.x = texture2D (inputImageTexture5, tmpvar_7).x;\n     lookup.y = texel.y;\n     texel.y = texture2D (inputImageTexture5, lookup).y;\n     lookup.y = texel.z;\n     texel.z = texture2D (inputImageTexture5, lookup).z;\n     red.x = texel.x;\n     green.x = texel.y;\n     blue.x = texel.z;\n     texel.x = texture2D (inputImageTexture6, red).x;\n     texel.y = texture2D (inputImageTexture6, green).y;\n     texel.z = texture2D (inputImageTexture6, blue).z;\n     lowp vec4 tmpvar_8;\n     tmpvar_8.w = 1.0;\n     tmpvar_8.xyz = texel;\n     gl_FragColor = tmpvar_8;\n }"

    .line 79
    invoke-direct {p0, p1, v0}, Lcom/lewis/edit/utils/filter/IFImageFilter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lcom/lewis/edit/utils/filter/IFToasterFilter;->setRes()V

    return-void
.end method

.method private setRes()V
    .locals 1

    .line 84
    sget v0, Lcom/lewis/edit/R$drawable;->toaster_metal:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/utils/filter/IFToasterFilter;->addInputTexture(I)V

    .line 85
    sget v0, Lcom/lewis/edit/R$drawable;->toaster_soft_light:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/utils/filter/IFToasterFilter;->addInputTexture(I)V

    .line 86
    sget v0, Lcom/lewis/edit/R$drawable;->toaster_curves:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/utils/filter/IFToasterFilter;->addInputTexture(I)V

    .line 87
    sget v0, Lcom/lewis/edit/R$drawable;->toaster_overlay_map_warm:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/utils/filter/IFToasterFilter;->addInputTexture(I)V

    .line 88
    sget v0, Lcom/lewis/edit/R$drawable;->toaster_color_shift:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/utils/filter/IFToasterFilter;->addInputTexture(I)V

    return-void
.end method
