.class Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SelfCheckAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/adapter/SelfCheckAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyViewHolder"
.end annotation


# instance fields
.field calibration:Landroid/widget/TextView;

.field controlerMode:Landroid/widget/TextView;

.field mBottomLine:Landroid/view/View;

.field mCustomKey:Landroidx/appcompat/widget/AppCompatSpinner;

.field mLastPos:I

.field final synthetic this$0:Lcom/powervision/aircraft/adapter/SelfCheckAdapter;

.field tilte:Landroid/widget/TextView;

.field value:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/adapter/SelfCheckAdapter;Landroid/view/View;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->this$0:Lcom/powervision/aircraft/adapter/SelfCheckAdapter;

    .line 161
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 158
    iput p1, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->mLastPos:I

    .line 162
    sget p1, Lcom/powervision/aircraft/R$id;->check_adapter_item_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->tilte:Landroid/widget/TextView;

    .line 163
    sget p1, Lcom/powervision/aircraft/R$id;->check_adapter_item_value:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->value:Landroid/widget/TextView;

    .line 164
    sget p1, Lcom/powervision/aircraft/R$id;->check_adapter_item_calibration:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->calibration:Landroid/widget/TextView;

    .line 165
    sget p1, Lcom/powervision/aircraft/R$id;->check_adapter_controler_mode:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->controlerMode:Landroid/widget/TextView;

    .line 166
    sget p1, Lcom/powervision/aircraft/R$id;->remote_custom_button:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatSpinner;

    iput-object p1, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->mCustomKey:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 167
    sget p1, Lcom/powervision/aircraft/R$id;->item_bottom_line:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->mBottomLine:Landroid/view/View;

    return-void
.end method


# virtual methods
.method initCustomKey()V
    .locals 4

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    iget-object v1, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->this$0:Lcom/powervision/aircraft/adapter/SelfCheckAdapter;

    invoke-static {v1}, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->access$000(Lcom/powervision/aircraft/adapter/SelfCheckAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_132:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v1, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->this$0:Lcom/powervision/aircraft/adapter/SelfCheckAdapter;

    invoke-static {v1}, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->access$000(Lcom/powervision/aircraft/adapter/SelfCheckAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_133:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v1, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->this$0:Lcom/powervision/aircraft/adapter/SelfCheckAdapter;

    invoke-static {v1}, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->access$000(Lcom/powervision/aircraft/adapter/SelfCheckAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_134:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v1, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->this$0:Lcom/powervision/aircraft/adapter/SelfCheckAdapter;

    invoke-static {v1}, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->access$000(Lcom/powervision/aircraft/adapter/SelfCheckAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_135:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v1, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->this$0:Lcom/powervision/aircraft/adapter/SelfCheckAdapter;

    invoke-static {v1}, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->access$000(Lcom/powervision/aircraft/adapter/SelfCheckAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_136:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v1, Lcom/powervision/base/adapter/LSpinnerAdapter;

    iget-object v2, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->this$0:Lcom/powervision/aircraft/adapter/SelfCheckAdapter;

    invoke-static {v2}, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->access$000(Lcom/powervision/aircraft/adapter/SelfCheckAdapter;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->mCustomKey:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-direct {v1, v2, v0, v3}, Lcom/powervision/base/adapter/LSpinnerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroidx/appcompat/widget/AppCompatSpinner;)V

    .line 181
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->mCustomKey:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 182
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->mCustomKey:Landroidx/appcompat/widget/AppCompatSpinner;

    new-instance v1, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder$1;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder$1;-><init>(Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method
