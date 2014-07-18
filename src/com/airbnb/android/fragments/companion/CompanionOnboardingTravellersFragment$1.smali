.class Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$1;
.super Ljava/lang/Object;
.source "CompanionOnboardingTravellersFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$1;->this$0:Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;

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
    .line 79
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$1;->this$0:Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;

    invoke-static {}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;->values()[Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;

    move-result-object v1

    aget-object v1, v1, p3

    # setter for: Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;->mTravellersOption:Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;->access$102(Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;)Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;

    .line 80
    return-void
.end method
