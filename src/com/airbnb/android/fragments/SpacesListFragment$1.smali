.class Lcom/airbnb/android/fragments/SpacesListFragment$1;
.super Ljava/lang/Object;
.source "SpacesListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SpacesListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/SpacesListFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SpacesListFragment;)V
    .registers 2

    .prologue
    .line 121
    iput-object p1, p0, Lcom/airbnb/android/fragments/SpacesListFragment$1;->this$0:Lcom/airbnb/android/fragments/SpacesListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 125
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "general_nav"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "spaces"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "lys_click_bottom"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/airbnb/android/fragments/SpacesListFragment$1;->this$0:Lcom/airbnb/android/fragments/SpacesListFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/SpacesListFragment$1;->this$0:Lcom/airbnb/android/fragments/SpacesListFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/SpacesListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->NewListing:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    invoke-static {v1, v2}, Lcom/airbnb/android/activities/ListYourSpaceActivity;->intentForState(Landroid/content/Context;Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/SpacesListFragment;->startActivity(Landroid/content/Intent;)V

    .line 127
    return-void
.end method
