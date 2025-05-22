.class public Lcom/powervision/gcs/Texture/DemoGlesTextureView;
.super Lcom/powervision/gcs/Texture/GLESTextureView;
.source "DemoGlesTextureView.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "DemoGlesTextureView"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/powervision/gcs/Texture/GLESTextureView;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-direct {p0, p1}, Lcom/powervision/gcs/Texture/DemoGlesTextureView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/powervision/gcs/Texture/GLESTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0, p1}, Lcom/powervision/gcs/Texture/DemoGlesTextureView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 26
    new-instance v0, Lcom/powervision/gcs/Texture/GLESRendererImpl;

    invoke-direct {v0, p1}, Lcom/powervision/gcs/Texture/GLESRendererImpl;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/Texture/DemoGlesTextureView;->setRenderer(Lcom/powervision/gcs/Texture/IGLESRenderer;)V

    const/4 p1, 0x1

    .line 28
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/Texture/DemoGlesTextureView;->setRenderMode(I)V

    return-void
.end method
