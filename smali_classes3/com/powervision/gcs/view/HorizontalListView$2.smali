.class Lcom/powervision/gcs/view/HorizontalListView$2;
.super Ljava/lang/Object;
.source "HorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/HorizontalListView;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/HorizontalListView;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/powervision/gcs/view/HorizontalListView$2;->this$0:Lcom/powervision/gcs/view/HorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/powervision/gcs/view/HorizontalListView$2;->this$0:Lcom/powervision/gcs/view/HorizontalListView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/HorizontalListView;->requestLayout()V

    return-void
.end method
