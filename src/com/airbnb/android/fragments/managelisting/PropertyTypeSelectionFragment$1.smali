.class Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment$1;
.super Ljava/lang/Object;
.source "PropertyTypeSelectionFragment.java"

# interfaces
.implements Lcom/airbnb/android/views/LinearListView$OnItemClickListener;


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


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;)V
    .registers 2

    .prologue
    .line 72
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/airbnb/android/views/LinearListView;Landroid/view/View;IJ)V
    .registers 11
    .param p1, "parent"    # Lcom/airbnb/android/views/LinearListView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 76
    invoke-static {}, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->values()[Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    move-result-object v1

    long-to-int v2, p4

    aget-object v0, v1, v2

    .line 77
    .local v0, "selection":Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v3, v3, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "lys"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "property_type"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "property_type_click"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;

    iget v4, v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->mTitleId:I

    invoke-virtual {v3, v4}, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;->mTransitions:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions;

    invoke-interface {v1, v0}, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions;->setPropertyType(Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;)V

    .line 80
    return-void
.end method
