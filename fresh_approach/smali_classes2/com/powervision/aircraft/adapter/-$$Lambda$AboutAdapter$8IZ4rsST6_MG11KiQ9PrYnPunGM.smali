.class public final synthetic Lcom/powervision/aircraft/adapter/-$$Lambda$AboutAdapter$8IZ4rsST6_MG11KiQ9PrYnPunGM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/powervision/aircraft/adapter/AboutAdapter;

.field public final synthetic f$1:Lcom/powervision/aircraft/adapter/AboutAdapter$AboutViewHolder;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/aircraft/adapter/AboutAdapter;Lcom/powervision/aircraft/adapter/AboutAdapter$AboutViewHolder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/adapter/-$$Lambda$AboutAdapter$8IZ4rsST6_MG11KiQ9PrYnPunGM;->f$0:Lcom/powervision/aircraft/adapter/AboutAdapter;

    iput-object p2, p0, Lcom/powervision/aircraft/adapter/-$$Lambda$AboutAdapter$8IZ4rsST6_MG11KiQ9PrYnPunGM;->f$1:Lcom/powervision/aircraft/adapter/AboutAdapter$AboutViewHolder;

    iput p3, p0, Lcom/powervision/aircraft/adapter/-$$Lambda$AboutAdapter$8IZ4rsST6_MG11KiQ9PrYnPunGM;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/powervision/aircraft/adapter/-$$Lambda$AboutAdapter$8IZ4rsST6_MG11KiQ9PrYnPunGM;->f$0:Lcom/powervision/aircraft/adapter/AboutAdapter;

    iget-object v1, p0, Lcom/powervision/aircraft/adapter/-$$Lambda$AboutAdapter$8IZ4rsST6_MG11KiQ9PrYnPunGM;->f$1:Lcom/powervision/aircraft/adapter/AboutAdapter$AboutViewHolder;

    iget v2, p0, Lcom/powervision/aircraft/adapter/-$$Lambda$AboutAdapter$8IZ4rsST6_MG11KiQ9PrYnPunGM;->f$2:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/powervision/aircraft/adapter/AboutAdapter;->lambda$onBindViewHolder$0$AboutAdapter(Lcom/powervision/aircraft/adapter/AboutAdapter$AboutViewHolder;ILandroid/view/View;)V

    return-void
.end method
