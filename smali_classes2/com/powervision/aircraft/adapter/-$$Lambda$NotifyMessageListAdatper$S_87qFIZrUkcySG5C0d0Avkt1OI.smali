.class public final synthetic Lcom/powervision/aircraft/adapter/-$$Lambda$NotifyMessageListAdatper$S_87qFIZrUkcySG5C0d0Avkt1OI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;

.field public final synthetic f$1:Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$MyViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$MyViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/adapter/-$$Lambda$NotifyMessageListAdatper$S_87qFIZrUkcySG5C0d0Avkt1OI;->f$0:Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;

    iput-object p2, p0, Lcom/powervision/aircraft/adapter/-$$Lambda$NotifyMessageListAdatper$S_87qFIZrUkcySG5C0d0Avkt1OI;->f$1:Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$MyViewHolder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/powervision/aircraft/adapter/-$$Lambda$NotifyMessageListAdatper$S_87qFIZrUkcySG5C0d0Avkt1OI;->f$0:Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;

    iget-object v1, p0, Lcom/powervision/aircraft/adapter/-$$Lambda$NotifyMessageListAdatper$S_87qFIZrUkcySG5C0d0Avkt1OI;->f$1:Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$MyViewHolder;

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;->lambda$onBindViewHolder$0$NotifyMessageListAdatper(Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$MyViewHolder;)V

    return-void
.end method
