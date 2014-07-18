.class Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$2;
.super Ljava/lang/Object;
.source "CitySelectionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)V
    .registers 2

    .prologue
    .line 137
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 140
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mEditText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->access$300(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "city":Ljava/lang/String;
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    iget-object v2, v1, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mTransitions:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mGeocodable:Ljava/lang/String;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->access$400(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_57

    move-object v1, v0

    :goto_1f
    invoke-interface {v2, v0, v1}, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions;->setCity(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/4 v1, 0x6

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v3, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v3, v3, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string/jumbo v3, "lys"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string/jumbo v3, "location"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string/jumbo v3, "next_click"

    aput-object v3, v2, v1

    const/4 v3, 0x4

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->access$500(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)Landroid/support/v4/widget/SimpleCursorAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/widget/SimpleCursorAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_5e

    const-string/jumbo v1, "auto_complete_avail"

    :goto_4e
    aput-object v1, v2, v3

    const/4 v1, 0x5

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 144
    return-void

    .line 141
    :cond_57
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mGeocodable:Ljava/lang/String;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->access$400(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1f

    .line 142
    :cond_5e
    const-string/jumbo v1, "auto_complete_not_avail"

    goto :goto_4e
.end method
