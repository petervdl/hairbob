.class public Lcom/airbnb/android/utils/GroupUtils;
.super Ljava/lang/Object;
.source "GroupUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBadgedTabView(Landroid/content/Context;II)Landroid/view/View;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleId"    # I
    .param p2, "badgeCount"    # I

    .prologue
    .line 47
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0301db

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 49
    .local v1, "tabView":Landroid/view/View;
    const v3, 0x7f080073

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 50
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    const v3, 0x7f080112

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 52
    .local v0, "badge":Landroid/widget/TextView;
    if-lez p2, :cond_3b

    .line 53
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    :goto_3a
    return-object v1

    .line 56
    :cond_3b
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3a
.end method

.method public static createFlagDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirmListiner"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    const/4 v5, 0x1

    .line 25
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 26
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0e01e2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e085b

    invoke-virtual {v2, v3, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e00b0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 31
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 32
    return-object v1
.end method

.method public static handleAvatarClick(Landroid/content/Context;Lcom/airbnb/android/models/groups/Group;Landroid/support/v4/app/FragmentManager;Lcom/airbnb/android/models/User;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "group"    # Lcom/airbnb/android/models/groups/Group;
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p3, "user"    # Lcom/airbnb/android/models/User;

    .prologue
    .line 36
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    .line 37
    .local v0, "currentUser":Lcom/airbnb/android/models/User;
    invoke-virtual {p3, v0}, Lcom/airbnb/android/models/User;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 38
    invoke-virtual {p3}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v2

    const-string/jumbo v4, "user_profile"

    invoke-static {p0, v2, v3, v4}, Lcom/airbnb/android/activities/ROActivity;->intentForUserId(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 43
    :goto_1c
    return-void

    .line 40
    :cond_1d
    invoke-static {p3, p1}, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->newInstance(Lcom/airbnb/android/models/User;Lcom/airbnb/android/models/groups/Group;)Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;

    move-result-object v1

    .line 41
    .local v1, "f":Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;
    const-class v2, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/airbnb/android/fragments/groups/GroupsUserDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1c
.end method

.method public static setTabViewBadge(Landroid/view/View;II)V
    .registers 7
    .param p0, "tabs"    # Landroid/view/View;
    .param p1, "tabId"    # I
    .param p2, "badgeCount"    # I

    .prologue
    .line 62
    const v3, 0x1020013

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TabWidget;

    .line 63
    .local v2, "tabWidget":Landroid/widget/TabWidget;
    invoke-virtual {v2, p1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 64
    .local v1, "badgedTab":Landroid/view/View;
    const v3, 0x7f080112

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 65
    .local v0, "badge":Landroid/widget/TextView;
    if-lez p2, :cond_24

    .line 66
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    :goto_23
    return-void

    .line 69
    :cond_24
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_23
.end method
