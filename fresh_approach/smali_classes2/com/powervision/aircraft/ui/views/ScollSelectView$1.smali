.class Lcom/powervision/aircraft/ui/views/ScollSelectView$1;
.super Ljava/lang/Object;
.source "ScollSelectView.java"

# interfaces
.implements Lcom/powervision/aircraft/ui/views/ScollSelectView$MessageLisetener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/views/ScollSelectView;->setDatas(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/views/ScollSelectView;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/views/ScollSelectView;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$1;->this$0:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendMessage()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$1;->this$0:Lcom/powervision/aircraft/ui/views/ScollSelectView;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/ScollSelectView;->invalidate()V

    return-void
.end method
