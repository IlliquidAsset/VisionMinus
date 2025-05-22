.class Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog$3;
.super Ljava/lang/Object;
.source "ObbDownloadHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->success()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;


# direct methods
.method constructor <init>(Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog$3;->this$1:Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog$3;->this$1:Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;

    invoke-static {v0}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->access$800(Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;)V

    .line 340
    iget-object v0, p0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog$3;->this$1:Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;

    iget-object v0, v0, Lcom/cclink/obbdownloader/download/ObbDownloadHelper$MyProgressDialog;->this$0:Lcom/cclink/obbdownloader/download/ObbDownloadHelper;

    invoke-static {v0}, Lcom/cclink/obbdownloader/download/ObbDownloadHelper;->access$1000(Lcom/cclink/obbdownloader/download/ObbDownloadHelper;)V

    return-void
.end method
