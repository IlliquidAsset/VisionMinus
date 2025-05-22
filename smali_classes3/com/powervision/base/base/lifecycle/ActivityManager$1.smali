.class Lcom/powervision/base/base/lifecycle/ActivityManager$1;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/base/base/lifecycle/ActivityManager;->showDialog(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/base/lifecycle/ActivityManager;

.field final synthetic val$health:I

.field final synthetic val$present:I


# direct methods
.method constructor <init>(Lcom/powervision/base/base/lifecycle/ActivityManager;II)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/powervision/base/base/lifecycle/ActivityManager$1;->this$0:Lcom/powervision/base/base/lifecycle/ActivityManager;

    iput p2, p0, Lcom/powervision/base/base/lifecycle/ActivityManager$1;->val$health:I

    iput p3, p0, Lcom/powervision/base/base/lifecycle/ActivityManager$1;->val$present:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager$1;->this$0:Lcom/powervision/base/base/lifecycle/ActivityManager;

    iget v1, p0, Lcom/powervision/base/base/lifecycle/ActivityManager$1;->val$health:I

    invoke-static {v0, v1}, Lcom/powervision/base/base/lifecycle/ActivityManager;->access$000(Lcom/powervision/base/base/lifecycle/ActivityManager;I)V

    .line 185
    iget-object v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager$1;->this$0:Lcom/powervision/base/base/lifecycle/ActivityManager;

    iget v1, p0, Lcom/powervision/base/base/lifecycle/ActivityManager$1;->val$health:I

    invoke-static {v0, v1}, Lcom/powervision/base/base/lifecycle/ActivityManager;->access$100(Lcom/powervision/base/base/lifecycle/ActivityManager;I)V

    .line 187
    iget-object v0, p0, Lcom/powervision/base/base/lifecycle/ActivityManager$1;->this$0:Lcom/powervision/base/base/lifecycle/ActivityManager;

    iget v1, p0, Lcom/powervision/base/base/lifecycle/ActivityManager$1;->val$present:I

    invoke-static {v0, v1}, Lcom/powervision/base/base/lifecycle/ActivityManager;->access$200(Lcom/powervision/base/base/lifecycle/ActivityManager;I)V

    return-void
.end method
