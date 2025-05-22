.class public final synthetic Lcom/powervision/user/ui/adapter/-$$Lambda$MessageAdapter$bLBlqlCmBwkqehZy02USjG-iYgA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/powervision/user/ui/adapter/MessageAdapter;

.field public final synthetic f$1:Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;

.field public final synthetic f$2:Lcom/powervision/base/net/retrofit/message/response/MessageBean;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/user/ui/adapter/MessageAdapter;Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;Lcom/powervision/base/net/retrofit/message/response/MessageBean;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/user/ui/adapter/-$$Lambda$MessageAdapter$bLBlqlCmBwkqehZy02USjG-iYgA;->f$0:Lcom/powervision/user/ui/adapter/MessageAdapter;

    iput-object p2, p0, Lcom/powervision/user/ui/adapter/-$$Lambda$MessageAdapter$bLBlqlCmBwkqehZy02USjG-iYgA;->f$1:Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;

    iput-object p3, p0, Lcom/powervision/user/ui/adapter/-$$Lambda$MessageAdapter$bLBlqlCmBwkqehZy02USjG-iYgA;->f$2:Lcom/powervision/base/net/retrofit/message/response/MessageBean;

    iput p4, p0, Lcom/powervision/user/ui/adapter/-$$Lambda$MessageAdapter$bLBlqlCmBwkqehZy02USjG-iYgA;->f$3:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/powervision/user/ui/adapter/-$$Lambda$MessageAdapter$bLBlqlCmBwkqehZy02USjG-iYgA;->f$0:Lcom/powervision/user/ui/adapter/MessageAdapter;

    iget-object v1, p0, Lcom/powervision/user/ui/adapter/-$$Lambda$MessageAdapter$bLBlqlCmBwkqehZy02USjG-iYgA;->f$1:Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;

    iget-object v2, p0, Lcom/powervision/user/ui/adapter/-$$Lambda$MessageAdapter$bLBlqlCmBwkqehZy02USjG-iYgA;->f$2:Lcom/powervision/base/net/retrofit/message/response/MessageBean;

    iget v3, p0, Lcom/powervision/user/ui/adapter/-$$Lambda$MessageAdapter$bLBlqlCmBwkqehZy02USjG-iYgA;->f$3:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/powervision/user/ui/adapter/MessageAdapter;->lambda$onBindViewHolder$0$MessageAdapter(Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;Lcom/powervision/base/net/retrofit/message/response/MessageBean;ILandroid/view/View;)V

    return-void
.end method
