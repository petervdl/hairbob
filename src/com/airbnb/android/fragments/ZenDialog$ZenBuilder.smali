.class public Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;
.super Ljava/lang/Object;
.source "ZenDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/ZenDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZenBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/airbnb/android/fragments/ZenDialog;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mArgs:Landroid/os/Bundle;

.field private mDialogFragment:Lcom/airbnb/android/fragments/ZenDialog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/android/fragments/ZenDialog;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 323
    .local p0, "this":Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;, "Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder<TT;>;"
    .local p1, "zenDialog":Lcom/airbnb/android/fragments/ZenDialog;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput-object p1, p0, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->mDialogFragment:Lcom/airbnb/android/fragments/ZenDialog;

    .line 325
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->mArgs:Landroid/os/Bundle;

    .line 326
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->context:Landroid/content/Context;

    .line 327
    return-void
.end method


# virtual methods
.method public create()Lcom/airbnb/android/fragments/ZenDialog;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 330
    .local p0, "this":Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;, "Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->mDialogFragment:Lcom/airbnb/android/fragments/ZenDialog;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->mArgs:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog;->setArguments(Landroid/os/Bundle;)V

    .line 331
    iget-object v0, p0, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->mDialogFragment:Lcom/airbnb/android/fragments/ZenDialog;

    return-object v0
.end method

.method public withBodyHtmlText(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;
    .registers 4
    .param p1, "bodyTextRes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, "this":Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;, "Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->mArgs:Landroid/os/Bundle;

    const-string/jumbo v1, "text_html_body"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 358
    return-object p0
.end method

.method public withBodyText(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;
    .registers 3
    .param p1, "bodyTextRes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 353
    .local p0, "this":Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;, "Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyText(Ljava/lang/String;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    return-object v0
.end method

.method public withBodyText(Ljava/lang/String;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;
    .registers 4
    .param p1, "bodyText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 362
    .local p0, "this":Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;, "Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->mArgs:Landroid/os/Bundle;

    const-string/jumbo v1, "text_body"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    return-object p0
.end method

.method public withCancelButton()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 411
    .local p0, "this":Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;, "Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->mArgs:Landroid/os/Bundle;

    const-string/jumbo v1, "gray_cancel_button"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 412
    return-object p0
.end method

.method public withCustomLayout()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 367
    .local p0, "this":Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;, "Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->mArgs:Landroid/os/Bundle;

    const-string/jumbo v1, "has_layout"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 368
    return-object p0
.end method

.method public withDualButton(IIIILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;
    .registers 12
    .param p1, "negativeButtonRes"    # I
    .param p2, "requestCodeLeft"    # I
    .param p3, "positiveButtonRes"    # I
    .param p4, "requestCodeRight"    # I
    .param p5, "targetFragment"    # Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Landroid/support/v4/app/Fragment;",
            ")",
            "Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 398
    .local p0, "this":Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;, "Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->context:Landroid/content/Context;

    invoke-virtual {v0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withDualButton(Ljava/lang/String;ILjava/lang/String;ILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    return-object v0
.end method

.method public withDualButton(Ljava/lang/String;ILjava/lang/String;ILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;
    .registers 8
    .param p1, "negativeButton"    # Ljava/lang/String;
    .param p2, "requestCodeLeft"    # I
    .param p3, "positiveButton"    # Ljava/lang/String;
    .param p4, "requestCodeRight"    # I
    .param p5, "targetFragment"    # Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Landroid/support/v4/app/Fragment;",
            ")",
            "Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 402
    .local p0, "this":Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;, "Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->mArgs:Landroid/os/Bundle;

    const-string/jumbo v1, "dual_left_button"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->mArgs:Landroid/os/Bundle;

    const-string/jumbo v1, "dual_right_button"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->mArgs:Landroid/os/Bundle;

    const-string/jumbo v1, "req_code_dual_negative_button"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 405
    iget-object v0, p0, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->mArgs:Landroid/os/Bundle;

    const-string/jumbo v1, "req_code_dual_positive_button"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 406
    iget-object v0, p0, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->mDialogFragment:Lcom/airbnb/android/fragments/ZenDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, p5, v1}, Lcom/airbnb/android/fragments/ZenDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 407
    return-object p0
.end method

.method public withListView(Landroid/os/Bundle;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;
    .registers 5
    .param p1, "optionalBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 372
    .local p0, "this":Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;, "Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->mArgs:Landroid/os/Bundle;

    const-string/jumbo v1, "has_listview"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 373
    iget-object v0, p0, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->mArgs:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 374
    return-object p0
.end method

.method public withSingleButton(IILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;
    .registers 5
    .param p1, "buttonTextRes"    # I
    .param p2, "requestCode"    # I
    .param p3, "targetFragment"    # Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/support/v4/app/Fragment;",
            ")",
            "Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 387
    .local p0, "this":Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;, "Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withSingleButton(Ljava/lang/String;ILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    return-object v0
.end method

.method public withSingleButton(Ljava/lang/String;ILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;
    .registers 6
    .param p1, "buttonText"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "targetFragment"    # Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/support/v4/app/Fragment;",
            ")",
            "Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 391
    .local p0, "this":Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;, "Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->mArgs:Landroid/os/Bundle;

    const-string/jumbo v1, "single_blue_button"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->mArgs:Landroid/os/Bundle;

    const-string/jumbo v1, "req_code_single_button"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 393
    iget-object v0, p0, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->mDialogFragment:Lcom/airbnb/android/fragments/ZenDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lcom/airbnb/android/fragments/ZenDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 394
    return-object p0
.end method

.method public withSubTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;
    .registers 3
    .param p1, "subtitleRes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 344
    .local p0, "this":Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;, "Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withSubTitle(Ljava/lang/String;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    return-object v0
.end method

.method public withSubTitle(Ljava/lang/String;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;
    .registers 4
    .param p1, "subtitle"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 348
    .local p0, "this":Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;, "Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->mArgs:Landroid/os/Bundle;

    const-string/jumbo v1, "header_subtitle"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    return-object p0
.end method

.method public withSwipeToDismiss()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 416
    .local p0, "this":Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;, "Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->mArgs:Landroid/os/Bundle;

    const-string/jumbo v1, "has_swipe_dismiss"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 417
    return-object p0
.end method

.method public withTargetFragment(Landroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;
    .registers 4
    .param p1, "targetFragment"    # Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            ")",
            "Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 421
    .local p0, "this":Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;, "Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->mDialogFragment:Lcom/airbnb/android/fragments/ZenDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/airbnb/android/fragments/ZenDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 422
    return-object p0
.end method

.method public withTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;
    .registers 3
    .param p1, "titleRes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 335
    .local p0, "this":Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;, "Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(Ljava/lang/String;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    return-object v0
.end method

.method public withTitle(Ljava/lang/String;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;
    .registers 4
    .param p1, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 339
    .local p0, "this":Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;, "Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->mArgs:Landroid/os/Bundle;

    const-string/jumbo v1, "header_title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    return-object p0
.end method

.method public withoutDividers()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 378
    .local p0, "this":Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;, "Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->mArgs:Landroid/os/Bundle;

    const-string/jumbo v1, "has_listview"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 379
    iget-object v0, p0, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->mArgs:Landroid/os/Bundle;

    const-string/jumbo v1, "no_list_dividers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 383
    return-object p0

    .line 381
    :cond_15
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "you can only call hide dividers if there\'s a list view"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
