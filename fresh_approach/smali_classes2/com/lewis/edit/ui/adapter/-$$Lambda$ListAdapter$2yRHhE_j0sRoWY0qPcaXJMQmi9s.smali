.class public final synthetic Lcom/lewis/edit/ui/adapter/-$$Lambda$ListAdapter$2yRHhE_j0sRoWY0qPcaXJMQmi9s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/lewis/edit/ui/adapter/ListAdapter;

.field public final synthetic f$1:Lcom/lewis/edit/ui/adapter/ListAdapter$ListHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/lewis/edit/ui/adapter/ListAdapter;Lcom/lewis/edit/ui/adapter/ListAdapter$ListHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lewis/edit/ui/adapter/-$$Lambda$ListAdapter$2yRHhE_j0sRoWY0qPcaXJMQmi9s;->f$0:Lcom/lewis/edit/ui/adapter/ListAdapter;

    iput-object p2, p0, Lcom/lewis/edit/ui/adapter/-$$Lambda$ListAdapter$2yRHhE_j0sRoWY0qPcaXJMQmi9s;->f$1:Lcom/lewis/edit/ui/adapter/ListAdapter$ListHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/lewis/edit/ui/adapter/-$$Lambda$ListAdapter$2yRHhE_j0sRoWY0qPcaXJMQmi9s;->f$0:Lcom/lewis/edit/ui/adapter/ListAdapter;

    iget-object v1, p0, Lcom/lewis/edit/ui/adapter/-$$Lambda$ListAdapter$2yRHhE_j0sRoWY0qPcaXJMQmi9s;->f$1:Lcom/lewis/edit/ui/adapter/ListAdapter$ListHolder;

    invoke-virtual {v0, v1, p1}, Lcom/lewis/edit/ui/adapter/ListAdapter;->lambda$onBindViewHolder$0$ListAdapter(Lcom/lewis/edit/ui/adapter/ListAdapter$ListHolder;Landroid/view/View;)V

    return-void
.end method
