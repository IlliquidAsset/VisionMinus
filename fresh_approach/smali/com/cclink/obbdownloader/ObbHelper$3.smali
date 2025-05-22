.class Lcom/cclink/obbdownloader/ObbHelper$3;
.super Ljava/lang/Object;
.source "ObbHelper.java"

# interfaces
.implements Lcom/cclink/obbdownloader/unzip/ObbUnzipListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cclink/obbdownloader/ObbHelper;->getUnzipListener(Lcom/cclink/obbdownloader/ObbHelperListener;)Lcom/cclink/obbdownloader/unzip/ObbUnzipListener;
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

    .line 141
    iput-object p1, p0, Lcom/cclink/obbdownloader/ObbHelper$3;->this$0:Lcom/cclink/obbdownloader/ObbHelper;

    iput-object p2, p0, Lcom/cclink/obbdownloader/ObbHelper$3;->val$listener:Lcom/cclink/obbdownloader/ObbHelperListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnzipComplete()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/cclink/obbdownloader/ObbHelper$3;->val$listener:Lcom/cclink/obbdownloader/ObbHelperListener;

    invoke-virtual {v0}, Lcom/cclink/obbdownloader/ObbHelperListener;->onSuccess()V

    return-void
.end method

.method public onUnzipFailed()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/cclink/obbdownloader/ObbHelper$3;->val$listener:Lcom/cclink/obbdownloader/ObbHelperListener;

    invoke-virtual {v0}, Lcom/cclink/obbdownloader/ObbHelperListener;->onFailed()V

    return-void
.end method
