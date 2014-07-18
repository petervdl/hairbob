.class public final Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$ErrorDialogFragment;
.super Lcom/airbnb/android/fragments/gplus/GooglePlayServicesErrorDialogFragment;
.source "GooglePlusClientFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ErrorDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/airbnb/android/fragments/gplus/GooglePlayServicesErrorDialogFragment;-><init>()V

    return-void
.end method

.method public static create(II)Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$ErrorDialogFragment;
    .registers 4
    .param p0, "errorCode"    # I
    .param p1, "requestCode"    # I

    .prologue
    .line 350
    new-instance v0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$ErrorDialogFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$ErrorDialogFragment;-><init>()V

    .line 351
    .local v0, "fragment":Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$ErrorDialogFragment;
    invoke-static {p0, p1}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$ErrorDialogFragment;->createArguments(II)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$ErrorDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 352
    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 357
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/gplus/GooglePlayServicesErrorDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 358
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$ErrorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 359
    .local v0, "activity":Landroid/support/v4/app/FragmentActivity;
    if-nez v0, :cond_a

    .line 368
    :cond_9
    :goto_9
    return-void

    .line 363
    :cond_a
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "plusClientFragment"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 365
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v2, v1, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    if-eqz v2, :cond_9

    .line 366
    check-cast v1, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$ErrorDialogFragment;->getTag()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->onDialogCanceled(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->access$200(Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 372
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/gplus/GooglePlayServicesErrorDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 373
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$ErrorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 374
    .local v0, "activity":Landroid/support/v4/app/FragmentActivity;
    if-nez v0, :cond_a

    .line 383
    :cond_9
    :goto_9
    return-void

    .line 378
    :cond_a
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "plusClientFragment"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 380
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v2, v1, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    if-eqz v2, :cond_9

    .line 381
    check-cast v1, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$ErrorDialogFragment;->getTag()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->onDialogDismissed(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->access$300(Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;Ljava/lang/String;)V

    goto :goto_9
.end method
