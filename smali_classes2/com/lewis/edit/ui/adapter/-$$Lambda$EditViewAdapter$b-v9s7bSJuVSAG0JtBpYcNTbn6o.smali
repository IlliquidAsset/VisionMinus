.class public final synthetic Lcom/lewis/edit/ui/adapter/-$$Lambda$EditViewAdapter$b-v9s7bSJuVSAG0JtBpYcNTbn6o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/lewis/edit/ui/adapter/EditViewAdapter;

.field public final synthetic f$1:Lcom/lewis/edit/ui/adapter/EditViewAdapter$EditViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/lewis/edit/ui/adapter/EditViewAdapter;Lcom/lewis/edit/ui/adapter/EditViewAdapter$EditViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lewis/edit/ui/adapter/-$$Lambda$EditViewAdapter$b-v9s7bSJuVSAG0JtBpYcNTbn6o;->f$0:Lcom/lewis/edit/ui/adapter/EditViewAdapter;

    iput-object p2, p0, Lcom/lewis/edit/ui/adapter/-$$Lambda$EditViewAdapter$b-v9s7bSJuVSAG0JtBpYcNTbn6o;->f$1:Lcom/lewis/edit/ui/adapter/EditViewAdapter$EditViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/lewis/edit/ui/adapter/-$$Lambda$EditViewAdapter$b-v9s7bSJuVSAG0JtBpYcNTbn6o;->f$0:Lcom/lewis/edit/ui/adapter/EditViewAdapter;

    iget-object v1, p0, Lcom/lewis/edit/ui/adapter/-$$Lambda$EditViewAdapter$b-v9s7bSJuVSAG0JtBpYcNTbn6o;->f$1:Lcom/lewis/edit/ui/adapter/EditViewAdapter$EditViewHolder;

    invoke-virtual {v0, v1, p1}, Lcom/lewis/edit/ui/adapter/EditViewAdapter;->lambda$onBindViewHolder$0$EditViewAdapter(Lcom/lewis/edit/ui/adapter/EditViewAdapter$EditViewHolder;Landroid/view/View;)V

    return-void
.end method
