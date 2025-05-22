.class Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$MoveInfo;
.super Ljava/lang/Object;
.source "AddRemoveAnimatorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveInfo"
.end annotation


# instance fields
.field public fromX:I

.field public fromY:I

.field public holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public toX:I

.field public toY:I


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 49
    iput p2, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$MoveInfo;->fromX:I

    .line 50
    iput p3, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$MoveInfo;->fromY:I

    .line 51
    iput p4, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$MoveInfo;->toX:I

    .line 52
    iput p5, p0, Lcom/powervision/aircraft/ui/recyclerCustom/AddRemoveAnimatorImpl$MoveInfo;->toY:I

    return-void
.end method
