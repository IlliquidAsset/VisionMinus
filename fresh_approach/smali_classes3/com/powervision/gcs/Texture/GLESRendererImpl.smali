.class public Lcom/powervision/gcs/Texture/GLESRendererImpl;
.super Ljava/lang/Object;
.source "GLESRendererImpl.java"

# interfaces
.implements Lcom/powervision/gcs/Texture/IGLESRenderer;


# static fields
.field private static final TAG:Ljava/lang/String; = "GLESRendererImpl"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeChange(II)V
.end method

.method public static native nativeCreate()V
.end method

.method public static native nativeDraw()V
.end method


# virtual methods
.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onDrawFrame()V
    .locals 0

    .line 43
    invoke-static {}, Lcom/powervision/gcs/Texture/GLESRendererImpl;->nativeDraw()V

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onSurfaceChanged(II)V
    .locals 0

    .line 37
    invoke-static {p1, p2}, Lcom/powervision/gcs/Texture/GLESRendererImpl;->nativeChange(II)V

    return-void
.end method

.method public onSurfaceCreated()V
    .locals 0

    .line 31
    invoke-static {}, Lcom/powervision/gcs/Texture/GLESRendererImpl;->nativeCreate()V

    return-void
.end method
