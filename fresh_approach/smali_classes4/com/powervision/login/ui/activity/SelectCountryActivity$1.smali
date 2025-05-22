.class Lcom/powervision/login/ui/activity/SelectCountryActivity$1;
.super Ljava/lang/Object;
.source "SelectCountryActivity.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/login/ui/activity/SelectCountryActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/login/ui/activity/SelectCountryActivity;


# direct methods
.method constructor <init>(Lcom/powervision/login/ui/activity/SelectCountryActivity;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity$1;->this$0:Lcom/powervision/login/ui/activity/SelectCountryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 5

    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 103
    iget-object p1, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity$1;->this$0:Lcom/powervision/login/ui/activity/SelectCountryActivity;

    invoke-static {p1}, Lcom/powervision/login/ui/activity/SelectCountryActivity;->access$000(Lcom/powervision/login/ui/activity/SelectCountryActivity;)Lme/yokeyword/indexablerv/IndexableLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Lme/yokeyword/indexablerv/IndexableLayout;->setVisibility(I)V

    .line 104
    iget-object p1, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity$1;->this$0:Lcom/powervision/login/ui/activity/SelectCountryActivity;

    invoke-static {p1}, Lcom/powervision/login/ui/activity/SelectCountryActivity;->access$100(Lcom/powervision/login/ui/activity/SelectCountryActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_2

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity$1;->this$0:Lcom/powervision/login/ui/activity/SelectCountryActivity;

    invoke-static {v0}, Lcom/powervision/login/ui/activity/SelectCountryActivity;->access$200(Lcom/powervision/login/ui/activity/SelectCountryActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 107
    :goto_0
    iget-object v3, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity$1;->this$0:Lcom/powervision/login/ui/activity/SelectCountryActivity;

    invoke-static {v3}, Lcom/powervision/login/ui/activity/SelectCountryActivity;->access$300(Lcom/powervision/login/ui/activity/SelectCountryActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 108
    iget-object v3, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity$1;->this$0:Lcom/powervision/login/ui/activity/SelectCountryActivity;

    invoke-static {v3}, Lcom/powervision/login/ui/activity/SelectCountryActivity;->access$300(Lcom/powervision/login/ui/activity/SelectCountryActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/login/model/entity/UserEntity;

    .line 109
    invoke-virtual {v3}, Lcom/powervision/login/model/entity/UserEntity;->getNick()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/powervision/login/model/entity/UserEntity;->getFieldPinyinIndexBy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 110
    :cond_1
    iget-object v4, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity$1;->this$0:Lcom/powervision/login/ui/activity/SelectCountryActivity;

    invoke-static {v4}, Lcom/powervision/login/ui/activity/SelectCountryActivity;->access$200(Lcom/powervision/login/ui/activity/SelectCountryActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_3
    iget-object p1, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity$1;->this$0:Lcom/powervision/login/ui/activity/SelectCountryActivity;

    invoke-static {p1}, Lcom/powervision/login/ui/activity/SelectCountryActivity;->access$000(Lcom/powervision/login/ui/activity/SelectCountryActivity;)Lme/yokeyword/indexablerv/IndexableLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Lme/yokeyword/indexablerv/IndexableLayout;->setVisibility(I)V

    .line 114
    iget-object p1, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity$1;->this$0:Lcom/powervision/login/ui/activity/SelectCountryActivity;

    invoke-static {p1}, Lcom/powervision/login/ui/activity/SelectCountryActivity;->access$100(Lcom/powervision/login/ui/activity/SelectCountryActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 115
    iget-object p1, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity$1;->this$0:Lcom/powervision/login/ui/activity/SelectCountryActivity;

    invoke-static {p1}, Lcom/powervision/login/ui/activity/SelectCountryActivity;->access$200(Lcom/powervision/login/ui/activity/SelectCountryActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 116
    :goto_1
    iget-object v0, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity$1;->this$0:Lcom/powervision/login/ui/activity/SelectCountryActivity;

    invoke-static {v0}, Lcom/powervision/login/ui/activity/SelectCountryActivity;->access$200(Lcom/powervision/login/ui/activity/SelectCountryActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 117
    iget-object v0, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity$1;->this$0:Lcom/powervision/login/ui/activity/SelectCountryActivity;

    invoke-static {v0}, Lcom/powervision/login/ui/activity/SelectCountryActivity;->access$200(Lcom/powervision/login/ui/activity/SelectCountryActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/login/model/entity/UserEntity;

    invoke-virtual {v0}, Lcom/powervision/login/model/entity/UserEntity;->getNick()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 119
    :cond_4
    iget-object v0, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity$1;->this$0:Lcom/powervision/login/ui/activity/SelectCountryActivity;

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity$1;->this$0:Lcom/powervision/login/ui/activity/SelectCountryActivity;

    const v3, 0x1090003

    invoke-direct {v1, v2, v3, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/powervision/login/ui/activity/SelectCountryActivity;->access$402(Lcom/powervision/login/ui/activity/SelectCountryActivity;Landroid/widget/ArrayAdapter;)Landroid/widget/ArrayAdapter;

    .line 120
    iget-object p1, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity$1;->this$0:Lcom/powervision/login/ui/activity/SelectCountryActivity;

    invoke-static {p1}, Lcom/powervision/login/ui/activity/SelectCountryActivity;->access$100(Lcom/powervision/login/ui/activity/SelectCountryActivity;)Landroid/widget/ListView;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/login/ui/activity/SelectCountryActivity$1;->this$0:Lcom/powervision/login/ui/activity/SelectCountryActivity;

    invoke-static {v0}, Lcom/powervision/login/ui/activity/SelectCountryActivity;->access$400(Lcom/powervision/login/ui/activity/SelectCountryActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
