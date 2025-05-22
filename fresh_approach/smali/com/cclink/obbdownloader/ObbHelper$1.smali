.class Lcom/cclink/obbdownloader/ObbHelper$1;
.super Ljava/lang/Object;
.source "ObbHelper.java"

# interfaces
.implements Lcom/cclink/obbdownloader/download/ObbDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cclink/obbdownloader/ObbHelper;->getDownloadListener(Lcom/cclink/obbdownloader/ObbHelperListener;)Lcom/cclink/obbdownloader/download/ObbDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cclink/obbdownloader/ObbHelper;

.field final synthetic val$listener:Lcom/cclink/obbdownloader/ObbHelperListener;


# direct methods
.method constructor <init>(Lcom/cclink/obbdownloader/ObbHelper;Lcom/cclink/obbdownloader/ObbHelperListener;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/cclink/obbdownloader/ObbHelper$1;->this$0:Lcom/cclink/obbdownloader/ObbHelper;

    iput-object p2, p0, Lcom/cclink/obbdownloader/ObbHelper$1;->val$listener:Lcom/cclink/obbdownloader/ObbHelperListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadComplete()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/cclink/obbdownloader/ObbHelper$1;->val$listener:Lcom/cclink/obbdownloader/ObbHelperListener;

    invoke-virtual {v0}, Lcom/cclink/obbdownloader/ObbHelperListener;->onSuccess()V

    return-void
.end method

.method public onDownloadFailed()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/cclink/obbdownloader/ObbHelper$1;->val$listener:Lcom/cclink/obbdownloader/ObbHelperListener;

    invoke-virtual {v0}, Lcom/cclink/obbdownloader/ObbHelperListener;->onFailed()V

    return-void
.end method
