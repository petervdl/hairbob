.class public Lcom/airbnb/android/fragments/TimePickerDialog;
.super Lcom/airbnb/android/fragments/ZenDialog;
.source "TimePickerDialog.java"


# static fields
.field public static final ARG_TIME_HOUR:Ljava/lang/String; = "time_hour"

.field public static final ARG_TIME_MINUTE:Ljava/lang/String; = "time_minute"

.field public static final TIME_PICKER_CANCEL:I = 0xbb9

.field public static final TIME_PICKER_OK:I = 0xbba


# instance fields
.field mTimePicker:Landroid/widget/TimePicker;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ZenDialog;-><init>()V

    return-void
.end method

.method public static newInstance(IILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/TimePickerDialog;
    .registers 10
    .param p0, "initialHour"    # I
    .param p1, "initialMinute"    # I
    .param p2, "targetFragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 29
    new-instance v0, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    new-instance v1, Lcom/airbnb/android/fragments/TimePickerDialog;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/TimePickerDialog;-><init>()V

    invoke-direct {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;-><init>(Lcom/airbnb/android/fragments/ZenDialog;)V

    const v1, 0x7f0e06dc

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withCustomLayout()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e00b0

    const/16 v2, 0xbb9

    const v3, 0x7f0e0563

    const/16 v4, 0xbba

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withDualButton(IIIILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v6

    check-cast v6, Lcom/airbnb/android/fragments/TimePickerDialog;

    .line 33
    .local v6, "dialog":Lcom/airbnb/android/fragments/TimePickerDialog;
    invoke-virtual {v6}, Lcom/airbnb/android/fragments/TimePickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "time_hour"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 34
    invoke-virtual {v6}, Lcom/airbnb/android/fragments/TimePickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "time_minute"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 35
    return-object v6
.end method


# virtual methods
.method protected clickRightButton(I)V
    .registers 7
    .param p1, "requestCodeRight"    # I

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 64
    .local v0, "data":Landroid/content/Intent;
    iget-object v3, p0, Lcom/airbnb/android/fragments/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v3}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 65
    .local v1, "hour":I
    iget-object v3, p0, Lcom/airbnb/android/fragments/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v3}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 66
    .local v2, "minute":I
    const-string/jumbo v3, "time_hour"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    const-string/jumbo v3, "time_minute"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/TimePickerDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, p1, v4, v0}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 70
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v7, -0x1

    .line 40
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/ZenDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v3

    .line 41
    .local v3, "view":Landroid/view/View;
    const v5, 0x7f030045

    invoke-virtual {p1, v5, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, "frame":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/TimePickerDialog;->setCustomView(Landroid/view/View;)V

    .line 44
    invoke-static {p0, v3}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 46
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/TimePickerDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    if-eqz v5, :cond_2d

    .line 47
    iget-object v5, p0, Lcom/airbnb/android/fragments/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/TimePickerDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/airbnb/android/utils/DateHelper;->is24Hour(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_26

    const/4 v4, 0x1

    :cond_26
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 50
    :cond_2d
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/TimePickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "time_hour"

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 51
    .local v1, "hour":I
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/TimePickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "time_minute"

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 53
    .local v2, "minute":I
    if-eq v1, v7, :cond_59

    if-eq v2, v7, :cond_59

    .line 54
    iget-object v4, p0, Lcom/airbnb/android/fragments/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 55
    iget-object v4, p0, Lcom/airbnb/android/fragments/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 58
    :cond_59
    return-object v3
.end method
