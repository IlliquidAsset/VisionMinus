.class Lcom/yalantis/ucrop/view/widget/HorizontalListView$2;
.super Ljava/lang/Object;
.source "HorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yalantis/ucrop/view/widget/HorizontalListView;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yalantis/ucrop/view/widget/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/yalantis/ucrop/view/widget/HorizontalListView;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView$2;->this$0:Lcom/yalantis/ucrop/view/widget/HorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/yalantis/ucrop/view/widget/HorizontalListView$2;->this$0:Lcom/yalantis/ucrop/view/widget/HorizontalListView;

    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/widget/HorizontalListView;->requestLayout()V

    return-void
.end method
