.class public Lcom/airbnb/android/fragments/BaseEditProfileSectionFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "BaseEditProfileSectionFragment.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/OnBackListener;


# instance fields
.field protected mCallback:Lcom/airbnb/android/interfaces/EditProfileInterface;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onAttach(Landroid/app/Activity;)V

    .line 16
    instance-of v0, p1, Lcom/airbnb/android/interfaces/EditProfileInterface;

    if-nez v0, :cond_2f

    .line 17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must implement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/airbnb/android/interfaces/EditProfileInterface;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_2f
    check-cast p1, Lcom/airbnb/android/interfaces/EditProfileInterface;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/airbnb/android/fragments/BaseEditProfileSectionFragment;->mCallback:Lcom/airbnb/android/interfaces/EditProfileInterface;

    .line 20
    return-void
.end method

.method public onBackPressed()Z
    .registers 2

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onResume()V

    .line 25
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BaseEditProfileSectionFragment;->updateViews()V

    .line 26
    return-void
.end method

.method protected updateViews()V
    .registers 1

    .prologue
    .line 32
    return-void
.end method
