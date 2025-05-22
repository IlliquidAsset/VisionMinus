.class Lcom/powervision/base/views/loopview/LoopView$IndexString;
.super Ljava/lang/Object;
.source "LoopView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/base/views/loopview/LoopView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IndexString"
.end annotation


# instance fields
.field private index:I

.field private string:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 772
    iput-object v0, p0, Lcom/powervision/base/views/loopview/LoopView$IndexString;->string:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 776
    iput p1, p0, Lcom/powervision/base/views/loopview/LoopView$IndexString;->index:I

    .line 777
    iput-object p2, p0, Lcom/powervision/base/views/loopview/LoopView$IndexString;->string:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/base/views/loopview/LoopView$IndexString;)Ljava/lang/String;
    .locals 0

    .line 770
    iget-object p0, p0, Lcom/powervision/base/views/loopview/LoopView$IndexString;->string:Ljava/lang/String;

    return-object p0
.end method
