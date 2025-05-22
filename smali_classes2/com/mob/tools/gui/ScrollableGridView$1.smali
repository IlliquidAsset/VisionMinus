.class Lcom/mob/tools/gui/ScrollableGridView$1;
.super Ljava/lang/Object;
.source "ScrollableGridView.java"

# interfaces
.implements Lcom/mob/tools/gui/Scrollable$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/gui/ScrollableGridView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/gui/ScrollableGridView;


# direct methods
.method constructor <init>(Lcom/mob/tools/gui/ScrollableGridView;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/mob/tools/gui/ScrollableGridView$1;->this$0:Lcom/mob/tools/gui/ScrollableGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(Lcom/mob/tools/gui/Scrollable;IIII)V
    .locals 0

    .line 34
    iget-object p1, p0, Lcom/mob/tools/gui/ScrollableGridView$1;->this$0:Lcom/mob/tools/gui/ScrollableGridView;

    if-gtz p3, :cond_0

    if-gtz p5, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lcom/mob/tools/gui/ScrollableGridView;->access$002(Lcom/mob/tools/gui/ScrollableGridView;Z)Z

    return-void
.end method
