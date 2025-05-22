.class public final synthetic Lcom/powervision/service/ui/activity/-$$Lambda$ServiceImageActivity$6MzpqsBA4XxYWQ7ceDkcBskcD28;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/service/ui/activity/ServiceImageActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/service/ui/activity/ServiceImageActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/service/ui/activity/-$$Lambda$ServiceImageActivity$6MzpqsBA4XxYWQ7ceDkcBskcD28;->f$0:Lcom/powervision/service/ui/activity/ServiceImageActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/powervision/service/ui/activity/-$$Lambda$ServiceImageActivity$6MzpqsBA4XxYWQ7ceDkcBskcD28;->f$0:Lcom/powervision/service/ui/activity/ServiceImageActivity;

    invoke-virtual {v0}, Lcom/powervision/service/ui/activity/ServiceImageActivity;->lambda$onLoadMoreRequested$3$ServiceImageActivity()V

    return-void
.end method
