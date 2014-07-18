.class Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment$2;
.super Ljava/lang/Object;
.source "PropertyTypeSelectionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;

.field final synthetic val$other:Landroid/view/View;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 84
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment$2;->val$other:Landroid/view/View;

    iput-object p3, p0, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 88
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    sget-object v3, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v3, v3, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v3, v2, v5

    const-string/jumbo v3, "lys"

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string/jumbo v4, "property_type"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "other_click"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "open"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 89
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;->mPrompt:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;->mPrompt:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHeight(I)V

    .line 91
    new-instance v1, Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter;

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter;-><init>(Landroid/content/Context;Ljava/lang/Boolean;Z)V

    .line 92
    .local v1, "p":Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter;
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;->mOtherPropertyTypesList:Lcom/airbnb/android/views/LinearListView;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;->access$100(Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;)Lcom/airbnb/android/views/LinearListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/airbnb/android/views/LinearListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;->mOtherPropertyTypesList:Lcom/airbnb/android/views/LinearListView;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;->access$100(Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;)Lcom/airbnb/android/views/LinearListView;

    move-result-object v2

    new-instance v3, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment$2$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment$2$1;-><init>(Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment$2;)V

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/LinearListView;->setOnItemClickListener(Lcom/airbnb/android/views/LinearListView$OnItemClickListener;)V

    .line 104
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;->mOtherPropertyTypesList:Lcom/airbnb/android/views/LinearListView;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;->access$100(Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;)Lcom/airbnb/android/views/LinearListView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/airbnb/android/views/LinearListView;->setVisibility(I)V

    .line 105
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment$2;->val$other:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment$2;->val$view:Landroid/view/View;

    const v3, 0x7f080411

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 107
    .local v0, "otherCellExpanded":Landroid/widget/TextView;
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment$2$2;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment$2$2;-><init>(Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment$2;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 116
    return-void
.end method
