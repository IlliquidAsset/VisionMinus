.class Lcom/mob/tools/gui/PullToRequestView$1;
.super Ljava/lang/Object;
.source "PullToRequestView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/gui/PullToRequestView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/gui/PullToRequestView;


# direct methods
.method constructor <init>(Lcom/mob/tools/gui/PullToRequestView;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/mob/tools/gui/PullToRequestView$1;->this$0:Lcom/mob/tools/gui/PullToRequestView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestView$1;->this$0:Lcom/mob/tools/gui/PullToRequestView;

    invoke-static {v0}, Lcom/mob/tools/gui/PullToRequestView;->access$000(Lcom/mob/tools/gui/PullToRequestView;)V

    return-void
.end method
