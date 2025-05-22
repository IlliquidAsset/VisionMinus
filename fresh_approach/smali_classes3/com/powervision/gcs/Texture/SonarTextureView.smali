.class public Lcom/powervision/gcs/Texture/SonarTextureView;
.super Lcom/powervision/gcs/Texture/GLESTextureView;
.source "SonarTextureView.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "DemoGlesTextureView"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/powervision/gcs/Texture/GLESTextureView;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-direct {p0, p1}, Lcom/powervision/gcs/Texture/SonarTextureView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/powervision/gcs/Texture/GLESTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/powervision/gcs/Texture/SonarTextureView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public setRender(Lcom/powervision/gcs/Texture/IGLESRenderer;)V
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/Texture/SonarTextureView;->setRenderer(Lcom/powervision/gcs/Texture/IGLESRenderer;)V

    const/4 p1, 0x1

    .line 31
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/Texture/SonarTextureView;->setRenderMode(I)V

    return-void
.end method
