.class Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$1;
.super Ljava/lang/Object;
.source "CompanionOnboardingMarketFamiliarityFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment;)V
    .registers 2

    .prologue
    .line 79
    iput-object p1, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$1;->this$0:Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$1;->this$0:Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment;

    invoke-static {}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;->values()[Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;

    move-result-object v1

    aget-object v1, v1, p3

    # setter for: Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment;->mMarketFamiliarityOption:Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment;->access$102(Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment;Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;)Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;

    .line 83
    return-void
.end method
