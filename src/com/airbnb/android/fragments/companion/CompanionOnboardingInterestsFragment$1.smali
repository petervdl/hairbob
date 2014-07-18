.class Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$1;
.super Ljava/lang/Object;
.source "CompanionOnboardingInterestsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;)V
    .registers 2

    .prologue
    .line 85
    iput-object p1, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$1;->this$0:Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
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
    .line 88
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v1, p2

    check-cast v1, Lcom/airbnb/android/views/CompanionInterestGridItemView;

    .line 91
    .local v1, "interestGridItemView":Lcom/airbnb/android/views/CompanionInterestGridItemView;
    invoke-static {}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;->values()[Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

    move-result-object v2

    aget-object v0, v2, p3

    .line 92
    .local v0, "interest":Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;
    invoke-virtual {v1}, Lcom/airbnb/android/views/CompanionInterestGridItemView;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 93
    iget-object v2, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$1;->this$0:Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;

    # getter for: Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;->mSelectedInterests:Ljava/util/List;
    invoke-static {v2}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;->access$100(Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :goto_18
    return-void

    .line 95
    :cond_19
    iget-object v2, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$1;->this$0:Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;

    # getter for: Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;->mSelectedInterests:Ljava/util/List;
    invoke-static {v2}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;->access$100(Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_18
.end method
