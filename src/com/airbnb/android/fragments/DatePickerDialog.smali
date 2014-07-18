.class public Lcom/airbnb/android/fragments/DatePickerDialog;
.super Lcom/airbnb/android/fragments/ZenDialog;
.source "DatePickerDialog.java"


# static fields
.field public static final ARG_DATE:Ljava/lang/String; = "date"

.field public static final DATE_PICKER_CANCEL:I = 0x7d1

.field public static final DATE_PICKER_OK:I = 0x7d2


# instance fields
.field mDatePicker:Landroid/widget/DatePicker;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ZenDialog;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/util/Calendar;Landroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/DatePickerDialog;
    .registers 9
    .param p0, "initialDate"    # Ljava/util/Calendar;
    .param p1, "targetFragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 31
    new-instance v0, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    new-instance v1, Lcom/airbnb/android/fragments/DatePickerDialog;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/DatePickerDialog;-><init>()V

    invoke-direct {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;-><init>(Lcom/airbnb/android/fragments/ZenDialog;)V

    const v1, 0x7f0e06d6

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withCustomLayout()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e00b0

    const/16 v2, 0x7d1

    const v3, 0x7f0e0563

    const/16 v4, 0x7d2

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withDualButton(IIIILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v6

    check-cast v6, Lcom/airbnb/android/fragments/DatePickerDialog;

    .line 35
    .local v6, "dialog":Lcom/airbnb/android/fragments/DatePickerDialog;
    invoke-virtual {v6}, Lcom/airbnb/android/fragments/DatePickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "date"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 36
    return-object v6
.end method


# virtual methods
.method protected clickRightButton(I)V
    .registers 7
    .param p1, "requestCodeRight"    # I

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 58
    .local v0, "data":Landroid/content/Intent;
    iget-object v2, p0, Lcom/airbnb/android/fragments/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v3}, Landroid/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v4}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/airbnb/android/utils/CalendarHelper;->getCalendarFromYearMonthDay(III)Ljava/util/Calendar;

    move-result-object v1

    .line 61
    .local v1, "date":Ljava/util/Calendar;
    const-string/jumbo v2, "date"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/DatePickerDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, p1, v3, v0}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 64
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/ZenDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .line 42
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f030044

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, "frame":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/DatePickerDialog;->setCustomView(Landroid/view/View;)V

    .line 45
    invoke-static {p0, v2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 47
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/DatePickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "date"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    .line 48
    .local v1, "initialDate":Ljava/util/Calendar;
    if-eqz v1, :cond_36

    .line 49
    iget-object v3, p0, Lcom/airbnb/android/fragments/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x5

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 52
    :cond_36
    return-object v2
.end method
