.class Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment$1;
.super Ljava/lang/Object;
.source "BaseCompanionOnboardingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;->setupStickyButton(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment$1;->this$0:Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment$1;->this$0:Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;

    # getter for: Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;->mOnboardingCallback:Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment$OnboardingCallback;
    invoke-static {v0}, Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;->access$000(Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;)Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment$OnboardingCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment$1;->this$0:Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;->getQuestion()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment$1;->this$0:Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;->getAnswers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment$OnboardingCallback;->onAddedPreferences(Ljava/lang/String;Ljava/util/List;)V

    .line 41
    return-void
.end method
