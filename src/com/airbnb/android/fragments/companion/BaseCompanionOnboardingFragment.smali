.class public Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "BaseCompanionOnboardingFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment$OnboardingCallback;
    }
.end annotation


# instance fields
.field mOnboardingBackground:Lcom/airbnb/android/views/AirImageView;

.field private mOnboardingCallback:Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment$OnboardingCallback;

.field mStickyButton:Lcom/airbnb/android/views/StickyButton;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    .line 18
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;)Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment$OnboardingCallback;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;->mOnboardingCallback:Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment$OnboardingCallback;

    return-object v0
.end method


# virtual methods
.method protected getAnswers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getQuestion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onAttach(Landroid/app/Activity;)V

    .line 64
    instance-of v0, p1, Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment$OnboardingCallback;

    if-nez v0, :cond_25

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must implement OnboardingCallback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_25
    check-cast p1, Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment$OnboardingCallback;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;->mOnboardingCallback:Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment$OnboardingCallback;

    .line 68
    return-void
.end method

.method protected setupBackground()V
    .registers 5

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/activities/CompanionOnboardingActivity;

    invoke-virtual {v1}, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->getMarket()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "market":Ljava/lang/String;
    const v1, 0x7f0e0391

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 31
    iget-object v1, p0, Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;->mOnboardingBackground:Lcom/airbnb/android/views/AirImageView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200b7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/AirImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    :goto_27
    return-void

    .line 33
    :cond_28
    iget-object v1, p0, Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;->mOnboardingBackground:Lcom/airbnb/android/views/AirImageView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/AirImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_27
.end method

.method protected setupStickyButton(Z)V
    .registers 4
    .param p1, "isDone"    # Z

    .prologue
    .line 38
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    new-instance v1, Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment$1;-><init>(Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    const v1, 0x7f0a000c

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setCustomBackgroundColorResource(I)V

    .line 46
    if-eqz p1, :cond_1d

    .line 47
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    const v1, 0x7f0e0174

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setTitle(I)V

    .line 51
    :goto_1c
    return-void

    .line 49
    :cond_1d
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    const v1, 0x7f0e053b

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setTitle(I)V

    goto :goto_1c
.end method
