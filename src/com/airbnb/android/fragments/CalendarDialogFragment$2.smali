.class Lcom/airbnb/android/fragments/CalendarDialogFragment$2;
.super Ljava/lang/Object;
.source "CalendarDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/CalendarDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

.field final synthetic val$noStickyButton:Z


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/CalendarDialogFragment;Z)V
    .registers 3

    .prologue
    .line 187
    iput-object p1, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    iput-boolean p2, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->val$noStickyButton:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 25
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    iget-object v12, v12, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v12, v12, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v12}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/adapters/BaseCalendarAdapter;

    .line 192
    .local v2, "adapter":Lcom/airbnb/android/adapters/BaseCalendarAdapter;
    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->onDateSelected(J)V

    .line 194
    invoke-virtual {v2}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->getStartTime()Ljava/util/Calendar;

    move-result-object v12

    if-nez v12, :cond_74

    .line 195
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    iget-object v12, v12, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v12, v12, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mTitle:Landroid/widget/TextView;

    const v13, 0x7f0e06a5

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 220
    :goto_27
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/CalendarDialogFragment;->mIsBookingDetailCalendar:Z
    invoke-static {v12}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->access$200(Lcom/airbnb/android/fragments/CalendarDialogFragment;)Z

    move-result v12

    if-nez v12, :cond_12c

    .line 221
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->val$noStickyButton:Z

    if-eqz v12, :cond_123

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->getStartTime()Ljava/util/Calendar;

    move-result-object v12

    if-eqz v12, :cond_123

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->getEndTime()Ljava/util/Calendar;

    move-result-object v12

    if-eqz v12, :cond_123

    .line 222
    invoke-virtual {v2}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->getStartTime()Ljava/util/Calendar;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 223
    .local v4, "checkIn":J
    invoke-virtual {v2}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->getEndTime()Ljava/util/Calendar;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 224
    .local v6, "checkOut":J
    const-string/jumbo v12, "apply_dates"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v13

    const-string/jumbo v14, "checkin"

    invoke-virtual {v13, v14, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;J)Lcom/airbnb/android/utils/Strap;

    move-result-object v13

    const-string/jumbo v14, "checkout"

    invoke-virtual {v13, v14, v6, v7}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;J)Lcom/airbnb/android/utils/Strap;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/airbnb/android/analytics/SearchAnalytics;->trackDateStepAction(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->onApplyOrSkipClick(Z)V

    .line 278
    .end local v4    # "checkIn":J
    .end local v6    # "checkOut":J
    :cond_73
    :goto_73
    return-void

    .line 196
    :cond_74
    invoke-virtual {v2}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->getStartTime()Ljava/util/Calendar;

    move-result-object v12

    if-eqz v12, :cond_f4

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->getEndTime()Ljava/util/Calendar;

    move-result-object v12

    if-nez v12, :cond_f4

    .line 197
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v12

    invoke-virtual {v12}, Lcom/airbnb/android/AirbnbApplication;->getAnalyticsRegistry()Lcom/airbnb/android/utils/Strap;

    move-result-object v12

    const-string/jumbo v13, "calendar_type"

    invoke-virtual {v12, v13}, Lcom/airbnb/android/utils/Strap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 198
    .local v3, "calendarType":Ljava/lang/String;
    const-string/jumbo v12, "android_eng"

    const/4 v13, 0x0

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v14

    const-string/jumbo v15, "calendar_action"

    const-string/jumbo v16, "selected_checkin_date"

    invoke-virtual/range {v14 .. v16}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v14

    const-string/jumbo v15, "calendar_type"

    invoke-virtual {v14, v15, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    invoke-virtual {v12}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    const v13, 0x7f040005

    invoke-static {v12, v13}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v11

    check-cast v11, Landroid/animation/AnimatorSet;

    .line 202
    .local v11, "set":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    iget-object v12, v12, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v12, v12, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 203
    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    .line 204
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    iget-object v12, v12, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v12, v12, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mTitle:Landroid/widget/TextView;

    new-instance v13, Lcom/airbnb/android/fragments/CalendarDialogFragment$2$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/airbnb/android/fragments/CalendarDialogFragment$2$1;-><init>(Lcom/airbnb/android/fragments/CalendarDialogFragment$2;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    invoke-virtual {v14}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0002

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    int-to-long v14, v14

    invoke-virtual {v12, v13, v14, v15}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_27

    .line 215
    .end local v3    # "calendarType":Ljava/lang/String;
    .end local v11    # "set":Landroid/animation/AnimatorSet;
    :cond_f4
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v12

    invoke-virtual {v12}, Lcom/airbnb/android/AirbnbApplication;->getAnalyticsRegistry()Lcom/airbnb/android/utils/Strap;

    move-result-object v12

    const-string/jumbo v13, "calendar_type"

    invoke-virtual {v12, v13}, Lcom/airbnb/android/utils/Strap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 216
    .restart local v3    # "calendarType":Ljava/lang/String;
    const-string/jumbo v12, "android_eng"

    const/4 v13, 0x0

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v14

    const-string/jumbo v15, "calendar_action"

    const-string/jumbo v16, "selected_checkout_date"

    invoke-virtual/range {v14 .. v16}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v14

    const-string/jumbo v15, "calendar_type"

    invoke-virtual {v14, v15, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    goto/16 :goto_27

    .line 227
    .end local v3    # "calendarType":Ljava/lang/String;
    :cond_123
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    # invokes: Lcom/airbnb/android/fragments/CalendarDialogFragment;->setStayDuration()V
    invoke-static {v12}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->access$300(Lcom/airbnb/android/fragments/CalendarDialogFragment;)V

    goto/16 :goto_73

    .line 231
    :cond_12c
    invoke-virtual {v2}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->getStartTime()Ljava/util/Calendar;

    move-result-object v12

    if-eqz v12, :cond_1a3

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->getEndTime()Ljava/util/Calendar;

    move-result-object v12

    if-nez v12, :cond_1a3

    .line 232
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    # invokes: Lcom/airbnb/android/fragments/CalendarDialogFragment;->removeFirstUnavailableDate()V
    invoke-static {v12}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->access$400(Lcom/airbnb/android/fragments/CalendarDialogFragment;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    # invokes: Lcom/airbnb/android/fragments/CalendarDialogFragment;->markMinimumStayDates(Lcom/airbnb/android/adapters/BaseCalendarAdapter;)V
    invoke-static {v12, v2}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->access$500(Lcom/airbnb/android/fragments/CalendarDialogFragment;Lcom/airbnb/android/adapters/BaseCalendarAdapter;)V

    .line 245
    :cond_146
    :goto_146
    invoke-virtual {v2}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->getStartTime()Ljava/util/Calendar;

    move-result-object v12

    if-eqz v12, :cond_152

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->getEndTime()Ljava/util/Calendar;

    move-result-object v12

    if-nez v12, :cond_1cf

    .line 246
    :cond_152
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/CalendarDialogFragment;->mMinimumNightStay:I
    invoke-static {v12}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->access$800(Lcom/airbnb/android/fragments/CalendarDialogFragment;)I

    move-result v12

    const/4 v14, 0x1

    if-le v12, v14, :cond_1cd

    const/4 v12, 0x1

    :goto_162
    # invokes: Lcom/airbnb/android/fragments/CalendarDialogFragment;->showSubtitle(Z)V
    invoke-static {v13, v12}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->access$900(Lcom/airbnb/android/fragments/CalendarDialogFragment;Z)V

    .line 247
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    iget-object v12, v12, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v12, v12, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mSubtitle:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    invoke-virtual {v13}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d003a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/CalendarDialogFragment;->mMinimumNightStay:I
    invoke-static {v15}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->access$800(Lcom/airbnb/android/fragments/CalendarDialogFragment;)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    move-object/from16 v18, v0

    # getter for: Lcom/airbnb/android/fragments/CalendarDialogFragment;->mMinimumNightStay:I
    invoke-static/range {v18 .. v18}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->access$800(Lcom/airbnb/android/fragments/CalendarDialogFragment;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_73

    .line 237
    :cond_1a3
    invoke-virtual {v2}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->getStartTime()Ljava/util/Calendar;

    move-result-object v12

    if-nez v12, :cond_1b8

    .line 238
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    # invokes: Lcom/airbnb/android/fragments/CalendarDialogFragment;->reinsertFirstUnavailableDate()V
    invoke-static {v12}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->access$600(Lcom/airbnb/android/fragments/CalendarDialogFragment;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    # invokes: Lcom/airbnb/android/fragments/CalendarDialogFragment;->unMarkMinimumStayDates(Lcom/airbnb/android/adapters/BaseCalendarAdapter;)V
    invoke-static {v12, v2}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->access$700(Lcom/airbnb/android/fragments/CalendarDialogFragment;Lcom/airbnb/android/adapters/BaseCalendarAdapter;)V

    goto :goto_146

    .line 241
    :cond_1b8
    invoke-virtual {v2}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->getStartTime()Ljava/util/Calendar;

    move-result-object v12

    if-eqz v12, :cond_146

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->getEndTime()Ljava/util/Calendar;

    move-result-object v12

    if-eqz v12, :cond_146

    .line 242
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    # invokes: Lcom/airbnb/android/fragments/CalendarDialogFragment;->unMarkMinimumStayDates(Lcom/airbnb/android/adapters/BaseCalendarAdapter;)V
    invoke-static {v12, v2}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->access$700(Lcom/airbnb/android/fragments/CalendarDialogFragment;Lcom/airbnb/android/adapters/BaseCalendarAdapter;)V

    goto/16 :goto_146

    .line 246
    :cond_1cd
    const/4 v12, 0x0

    goto :goto_162

    .line 248
    :cond_1cf
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    # invokes: Lcom/airbnb/android/fragments/CalendarDialogFragment;->validDurationInterval()Z
    invoke-static {v12}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->access$1000(Lcom/airbnb/android/fragments/CalendarDialogFragment;)Z

    move-result v12

    if-eqz v12, :cond_22b

    .line 249
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    invoke-virtual {v12}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v12

    if-eqz v12, :cond_222

    .line 250
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    invoke-virtual {v12}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v8

    .line 251
    .local v8, "f":Landroid/support/v4/app/Fragment;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 252
    .local v9, "intent":Landroid/content/Intent;
    const-string/jumbo v12, "start_time"

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->getStartTime()Ljava/util/Calendar;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    invoke-virtual {v9, v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 253
    const-string/jumbo v12, "end_time"

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->getEndTime()Ljava/util/Calendar;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    invoke-virtual {v9, v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 254
    const-string/jumbo v12, "duration"

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->getSelectionDuration()I

    move-result v13

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    invoke-virtual {v12}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->getTargetRequestCode()I

    move-result v12

    const/4 v13, -0x1

    invoke-virtual {v8, v12, v13, v9}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 257
    .end local v8    # "f":Landroid/support/v4/app/Fragment;
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_222
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    invoke-virtual {v12}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->dismiss()V

    goto/16 :goto_73

    .line 259
    :cond_22b
    invoke-virtual {v2}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->getSelectionDuration()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/CalendarDialogFragment;->mMinimumNightStay:I
    invoke-static {v13}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->access$800(Lcom/airbnb/android/fragments/CalendarDialogFragment;)I

    move-result v13

    if-ge v12, v13, :cond_289

    .line 260
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    # invokes: Lcom/airbnb/android/fragments/CalendarDialogFragment;->showMinimumNightStayError()V
    invoke-static {v12}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->access$1100(Lcom/airbnb/android/fragments/CalendarDialogFragment;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    # invokes: Lcom/airbnb/android/fragments/CalendarDialogFragment;->markMinimumStayDates(Lcom/airbnb/android/adapters/BaseCalendarAdapter;)V
    invoke-static {v12, v2}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->access$500(Lcom/airbnb/android/fragments/CalendarDialogFragment;Lcom/airbnb/android/adapters/BaseCalendarAdapter;)V

    .line 262
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->setEndTime(Ljava/util/Calendar;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    invoke-virtual {v12}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d003a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/CalendarDialogFragment;->mMinimumNightStay:I
    invoke-static {v14}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->access$800(Lcom/airbnb/android/fragments/CalendarDialogFragment;)I

    move-result v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    move-object/from16 v17, v0

    # getter for: Lcom/airbnb/android/fragments/CalendarDialogFragment;->mMinimumNightStay:I
    invoke-static/range {v17 .. v17}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->access$800(Lcom/airbnb/android/fragments/CalendarDialogFragment;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 266
    .local v10, "minNightStayWarning":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    invoke-virtual {v12}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v10, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto/16 :goto_73

    .line 268
    .end local v10    # "minNightStayWarning":Ljava/lang/String;
    :cond_289
    invoke-virtual {v2}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->getEndTime()Ljava/util/Calendar;

    move-result-object v12

    if-eqz v12, :cond_73

    .line 269
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    # invokes: Lcom/airbnb/android/fragments/CalendarDialogFragment;->reinsertFirstUnavailableDate()V
    invoke-static {v12}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->access$600(Lcom/airbnb/android/fragments/CalendarDialogFragment;)V

    .line 270
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->setStartTime(Ljava/util/Calendar;)V

    .line 271
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->setEndTime(Ljava/util/Calendar;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    const/4 v13, 0x1

    # invokes: Lcom/airbnb/android/fragments/CalendarDialogFragment;->showSubtitle(Z)V
    invoke-static {v12, v13}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->access$900(Lcom/airbnb/android/fragments/CalendarDialogFragment;Z)V

    .line 273
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    iget-object v12, v12, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v12, v12, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mSubtitle:Landroid/widget/TextView;

    const v13, 0x7f0e0368

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 274
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    iget-object v12, v12, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v12, v12, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mSubtitle:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    invoke-virtual {v13}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a002b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_73
.end method
