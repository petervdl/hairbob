.class Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$OnboardingInterestAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CompanionOnboardingInterestsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnboardingInterestAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;


# direct methods
.method private constructor <init>(Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;Landroid/content/Context;I[Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "objects"    # [Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$OnboardingInterestAdapter;->this$0:Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;

    .line 117
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;Landroid/content/Context;I[Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$1;)V
    .registers 6
    .param p1, "x0"    # Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # I
    .param p4, "x3"    # [Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;
    .param p5, "x4"    # Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$1;

    .prologue
    .line 114
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$OnboardingInterestAdapter;-><init>(Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;Landroid/content/Context;I[Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 123
    new-instance v1, Lcom/airbnb/android/views/CompanionInterestGridItemView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$OnboardingInterestAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/android/views/CompanionInterestGridItemView;-><init>(Landroid/content/Context;)V

    .line 125
    .local v1, "view":Lcom/airbnb/android/views/CompanionInterestGridItemView;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$OnboardingInterestAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

    .line 126
    .local v0, "interest":Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;
    invoke-virtual {v0}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;->getDrawableIconId()I

    move-result v2

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;->getStringResourceId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/airbnb/android/views/CompanionInterestGridItemView;->initializeView(IIZ)V

    .line 128
    return-object v1
.end method
