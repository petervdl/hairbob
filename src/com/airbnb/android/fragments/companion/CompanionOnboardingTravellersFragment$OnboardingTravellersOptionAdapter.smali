.class Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$OnboardingTravellersOptionAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CompanionOnboardingTravellersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnboardingTravellersOptionAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;


# direct methods
.method private constructor <init>(Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;Landroid/content/Context;I[Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "objects"    # [Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$OnboardingTravellersOptionAdapter;->this$0:Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;

    .line 100
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 101
    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;Landroid/content/Context;I[Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$1;)V
    .registers 6
    .param p1, "x0"    # Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # I
    .param p4, "x3"    # [Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;
    .param p5, "x4"    # Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$1;

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$OnboardingTravellersOptionAdapter;-><init>(Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;Landroid/content/Context;I[Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 106
    new-instance v1, Lcom/airbnb/android/views/CompanionGridItemView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$OnboardingTravellersOptionAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/android/views/CompanionGridItemView;-><init>(Landroid/content/Context;)V

    .line 108
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$OnboardingTravellersOptionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;

    .local v0, "option":Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;
    move-object v2, v1

    .line 109
    check-cast v2, Lcom/airbnb/android/views/CompanionGridItemView;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;->getStringResourceId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/views/CompanionGridItemView;->initializeView(IZ)V

    .line 111
    return-object v1
.end method
