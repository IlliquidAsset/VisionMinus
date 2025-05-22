.class public Lcom/powervision/condition/utils/GLTransformation;
.super Ljava/lang/Object;
.source "GLTransformation.java"


# instance fields
.field public alpha:D

.field public rotate:D

.field public scaleX:D

.field public scaleY:D

.field public x:D

.field public y:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 8
    iput-wide v0, p0, Lcom/powervision/condition/utils/GLTransformation;->x:D

    .line 9
    iput-wide v0, p0, Lcom/powervision/condition/utils/GLTransformation;->y:D

    .line 10
    iput-wide v0, p0, Lcom/powervision/condition/utils/GLTransformation;->alpha:D

    .line 11
    iput-wide v0, p0, Lcom/powervision/condition/utils/GLTransformation;->rotate:D

    .line 12
    iput-wide v0, p0, Lcom/powervision/condition/utils/GLTransformation;->scaleX:D

    .line 13
    iput-wide v0, p0, Lcom/powervision/condition/utils/GLTransformation;->scaleY:D

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 19
    iput-wide v0, p0, Lcom/powervision/condition/utils/GLTransformation;->x:D

    .line 20
    iput-wide v0, p0, Lcom/powervision/condition/utils/GLTransformation;->y:D

    .line 21
    iput-wide v0, p0, Lcom/powervision/condition/utils/GLTransformation;->alpha:D

    .line 22
    iput-wide v0, p0, Lcom/powervision/condition/utils/GLTransformation;->scaleX:D

    .line 23
    iput-wide v0, p0, Lcom/powervision/condition/utils/GLTransformation;->scaleY:D

    .line 24
    iput-wide v0, p0, Lcom/powervision/condition/utils/GLTransformation;->rotate:D

    return-void
.end method
