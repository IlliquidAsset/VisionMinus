.class public Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;
.super Ljava/lang/Object;
.source "GridGroupedsBaseAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Position"
.end annotation


# instance fields
.field protected mGrouped:I

.field protected mPosition:I

.field final synthetic this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;


# direct methods
.method public constructor <init>(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;II)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    iput p3, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;->mGrouped:I

    .line 377
    iput p2, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$Position;->mPosition:I

    return-void
.end method
