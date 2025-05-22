.class public Lcom/powervision/gcs/utils/AircraftAnimation$MyFrame;
.super Ljava/lang/Object;
.source "AircraftAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/utils/AircraftAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyFrame"
.end annotation


# instance fields
.field bytes:[B

.field drawable:Landroid/graphics/drawable/Drawable;

.field duration:I

.field isReady:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/powervision/gcs/utils/AircraftAnimation$MyFrame;->isReady:Z

    return-void
.end method
