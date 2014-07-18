.class Lcom/airbnb/android/fragments/ManageCalendarFragment$2;
.super Ljava/lang/Object;
.source "ManageCalendarFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ManageCalendarFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ManageCalendarFragment;)V
    .registers 2

    .prologue
    .line 111
    iput-object p1, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment$2;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 23
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
    .line 115
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/airbnb/android/fragments/ManageCalendarFragment$2;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    iget-object v13, v13, Lcom/airbnb/android/fragments/ManageCalendarFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;

    iget-object v13, v13, Lcom/airbnb/android/fragments/SquareCalendarFragment$CalendarHolder;->mGrid:Lcom/airbnb/android/views/StaticHeightGridView;

    invoke-virtual {v13}, Lcom/airbnb/android/views/StaticHeightGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/adapters/ManageCalendarAdapter;

    .line 116
    .local v1, "adapter":Lcom/airbnb/android/adapters/ManageCalendarAdapter;
    move/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/airbnb/android/adapters/ManageCalendarAdapter;->getItem(I)Lcom/airbnb/android/models/CalendarSquare;

    move-result-object v11

    .line 117
    .local v11, "square":Lcom/airbnb/android/models/CalendarSquare;
    invoke-virtual {v11}, Lcom/airbnb/android/models/CalendarSquare;->getReservation()Lcom/airbnb/android/models/SparseCalendarReservation;

    move-result-object v13

    if-eqz v13, :cond_24

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/airbnb/android/fragments/ManageCalendarFragment$2;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    # getter for: Lcom/airbnb/android/fragments/ManageCalendarFragment;->mStartSquare:Lcom/airbnb/android/models/CalendarSquare;
    invoke-static {v13}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->access$000(Lcom/airbnb/android/fragments/ManageCalendarFragment;)Lcom/airbnb/android/models/CalendarSquare;

    move-result-object v13

    if-eqz v13, :cond_150

    .line 118
    :cond_24
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/airbnb/android/fragments/ManageCalendarFragment$2;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    # getter for: Lcom/airbnb/android/fragments/ManageCalendarFragment;->mStartSquare:Lcom/airbnb/android/models/CalendarSquare;
    invoke-static {v13}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->access$000(Lcom/airbnb/android/fragments/ManageCalendarFragment;)Lcom/airbnb/android/models/CalendarSquare;

    move-result-object v13

    if-nez v13, :cond_3d

    .line 120
    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Lcom/airbnb/android/models/CalendarSquare;->setSelected(Z)V

    .line 121
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/airbnb/android/fragments/ManageCalendarFragment$2;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    # setter for: Lcom/airbnb/android/fragments/ManageCalendarFragment;->mStartSquare:Lcom/airbnb/android/models/CalendarSquare;
    invoke-static {v13, v11}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->access$002(Lcom/airbnb/android/fragments/ManageCalendarFragment;Lcom/airbnb/android/models/CalendarSquare;)Lcom/airbnb/android/models/CalendarSquare;

    .line 156
    :goto_39
    invoke-virtual {v1}, Lcom/airbnb/android/adapters/ManageCalendarAdapter;->notifyDataSetChanged()V

    .line 169
    :goto_3c
    return-void

    .line 122
    :cond_3d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/airbnb/android/fragments/ManageCalendarFragment$2;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    # getter for: Lcom/airbnb/android/fragments/ManageCalendarFragment;->mStartSquare:Lcom/airbnb/android/models/CalendarSquare;
    invoke-static {v13}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->access$000(Lcom/airbnb/android/fragments/ManageCalendarFragment;)Lcom/airbnb/android/models/CalendarSquare;

    move-result-object v13

    if-ne v11, v13, :cond_66

    .line 124
    invoke-virtual {v11}, Lcom/airbnb/android/models/CalendarSquare;->toggleAvailability()Z

    .line 125
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/airbnb/android/fragments/ManageCalendarFragment$2;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    invoke-virtual {v13}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->getAdapter()Lcom/airbnb/android/adapters/SquareCalendarAdapter;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->setShouldAnimate(Z)V

    .line 126
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/airbnb/android/fragments/ManageCalendarFragment$2;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    # invokes: Lcom/airbnb/android/fragments/ManageCalendarFragment;->save()V
    invoke-static {v13}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->access$100(Lcom/airbnb/android/fragments/ManageCalendarFragment;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/airbnb/android/fragments/ManageCalendarFragment$2;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    const/4 v14, 0x0

    # setter for: Lcom/airbnb/android/fragments/ManageCalendarFragment;->mStartSquare:Lcom/airbnb/android/models/CalendarSquare;
    invoke-static {v13, v14}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->access$002(Lcom/airbnb/android/fragments/ManageCalendarFragment;Lcom/airbnb/android/models/CalendarSquare;)Lcom/airbnb/android/models/CalendarSquare;

    goto :goto_39

    .line 130
    :cond_66
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/airbnb/android/fragments/ManageCalendarFragment$2;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    # getter for: Lcom/airbnb/android/fragments/ManageCalendarFragment;->mStartSquare:Lcom/airbnb/android/models/CalendarSquare;
    invoke-static {v13}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->access$000(Lcom/airbnb/android/fragments/ManageCalendarFragment;)Lcom/airbnb/android/models/CalendarSquare;

    move-result-object v13

    invoke-virtual {v13}, Lcom/airbnb/android/models/CalendarSquare;->getDate()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    invoke-virtual {v11}, Lcom/airbnb/android/models/CalendarSquare;->getDate()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-lez v13, :cond_92

    .line 131
    move-object v12, v11

    .line 132
    .local v12, "temp":Lcom/airbnb/android/models/CalendarSquare;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/airbnb/android/fragments/ManageCalendarFragment$2;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    # getter for: Lcom/airbnb/android/fragments/ManageCalendarFragment;->mStartSquare:Lcom/airbnb/android/models/CalendarSquare;
    invoke-static {v13}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->access$000(Lcom/airbnb/android/fragments/ManageCalendarFragment;)Lcom/airbnb/android/models/CalendarSquare;

    move-result-object v11

    .line 133
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/airbnb/android/fragments/ManageCalendarFragment$2;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    # setter for: Lcom/airbnb/android/fragments/ManageCalendarFragment;->mStartSquare:Lcom/airbnb/android/models/CalendarSquare;
    invoke-static {v13, v12}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->access$002(Lcom/airbnb/android/fragments/ManageCalendarFragment;Lcom/airbnb/android/models/CalendarSquare;)Lcom/airbnb/android/models/CalendarSquare;

    .line 135
    .end local v12    # "temp":Lcom/airbnb/android/models/CalendarSquare;
    :cond_92
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/airbnb/android/fragments/ManageCalendarFragment$2;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    # getter for: Lcom/airbnb/android/fragments/ManageCalendarFragment;->mStartSquare:Lcom/airbnb/android/models/CalendarSquare;
    invoke-static {v13}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->access$000(Lcom/airbnb/android/fragments/ManageCalendarFragment;)Lcom/airbnb/android/models/CalendarSquare;

    move-result-object v13

    invoke-virtual {v13}, Lcom/airbnb/android/models/CalendarSquare;->getAvailability()Z

    move-result v13

    if-nez v13, :cond_13a

    const/4 v2, 0x1

    .line 136
    .local v2, "available":Z
    :goto_a1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 137
    .local v3, "calendar":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/airbnb/android/fragments/ManageCalendarFragment$2;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    # getter for: Lcom/airbnb/android/fragments/ManageCalendarFragment;->mStartSquare:Lcom/airbnb/android/models/CalendarSquare;
    invoke-static {v13}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->access$000(Lcom/airbnb/android/fragments/ManageCalendarFragment;)Lcom/airbnb/android/models/CalendarSquare;

    move-result-object v13

    invoke-virtual {v13}, Lcom/airbnb/android/models/CalendarSquare;->getDate()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/airbnb/android/fragments/ManageCalendarFragment$2;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    invoke-virtual {v13}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->getAdapter()Lcom/airbnb/android/adapters/SquareCalendarAdapter;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->getItemId(I)J

    move-result-wide v13

    const-wide/32 v15, 0x7b98a00

    sub-long v6, v13, v15

    .line 141
    .local v6, "first":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/airbnb/android/fragments/ManageCalendarFragment$2;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    invoke-virtual {v13}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->getAdapter()Lcom/airbnb/android/adapters/SquareCalendarAdapter;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/airbnb/android/fragments/ManageCalendarFragment$2;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    invoke-virtual {v14}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->getAdapter()Lcom/airbnb/android/adapters/SquareCalendarAdapter;

    move-result-object v14

    invoke-virtual {v14}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->getCount()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->getItemId(I)J

    move-result-wide v8

    .line 142
    .local v8, "last":J
    :goto_e0
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    invoke-virtual {v11}, Lcom/airbnb/android/models/CalendarSquare;->getDate()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-gtz v13, :cond_13f

    .line 143
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/airbnb/android/fragments/ManageCalendarFragment$2;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    invoke-virtual {v13}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->getAdapter()Lcom/airbnb/android/adapters/SquareCalendarAdapter;

    move-result-object v13

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->getItem(J)Lcom/airbnb/android/models/CalendarSquare;

    move-result-object v4

    .line 144
    .local v4, "calendarSquare":Lcom/airbnb/android/models/CalendarSquare;
    invoke-virtual {v4}, Lcom/airbnb/android/models/CalendarSquare;->getReservation()Lcom/airbnb/android/models/SparseCalendarReservation;

    move-result-object v13

    if-nez v13, :cond_114

    .line 145
    invoke-virtual {v4, v2}, Lcom/airbnb/android/models/CalendarSquare;->setAvailability(Z)V

    .line 146
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/airbnb/android/fragments/ManageCalendarFragment$2;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    # getter for: Lcom/airbnb/android/fragments/ManageCalendarFragment;->mModifiedList:Ljava/util/List;
    invoke-static {v13}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->access$200(Lcom/airbnb/android/fragments/ManageCalendarFragment;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_114
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    cmp-long v13, v13, v6

    if-ltz v13, :cond_13d

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    cmp-long v13, v13, v8

    if-gtz v13, :cond_13d

    const/4 v13, 0x1

    :goto_125
    invoke-virtual {v4, v13}, Lcom/airbnb/android/models/CalendarSquare;->setSelected(Z)V

    .line 150
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/airbnb/android/fragments/ManageCalendarFragment$2;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    invoke-virtual {v13}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->getAdapter()Lcom/airbnb/android/adapters/SquareCalendarAdapter;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->setShouldAnimate(Z)V

    .line 142
    const/4 v13, 0x6

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Ljava/util/Calendar;->add(II)V

    goto :goto_e0

    .line 135
    .end local v2    # "available":Z
    .end local v3    # "calendar":Ljava/util/Calendar;
    .end local v4    # "calendarSquare":Lcom/airbnb/android/models/CalendarSquare;
    .end local v6    # "first":J
    .end local v8    # "last":J
    :cond_13a
    const/4 v2, 0x0

    goto/16 :goto_a1

    .line 149
    .restart local v2    # "available":Z
    .restart local v3    # "calendar":Ljava/util/Calendar;
    .restart local v4    # "calendarSquare":Lcom/airbnb/android/models/CalendarSquare;
    .restart local v6    # "first":J
    .restart local v8    # "last":J
    :cond_13d
    const/4 v13, 0x0

    goto :goto_125

    .line 153
    .end local v4    # "calendarSquare":Lcom/airbnb/android/models/CalendarSquare;
    :cond_13f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/airbnb/android/fragments/ManageCalendarFragment$2;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    # invokes: Lcom/airbnb/android/fragments/ManageCalendarFragment;->save()V
    invoke-static {v13}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->access$100(Lcom/airbnb/android/fragments/ManageCalendarFragment;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/airbnb/android/fragments/ManageCalendarFragment$2;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    const/4 v14, 0x0

    # setter for: Lcom/airbnb/android/fragments/ManageCalendarFragment;->mStartSquare:Lcom/airbnb/android/models/CalendarSquare;
    invoke-static {v13, v14}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->access$002(Lcom/airbnb/android/fragments/ManageCalendarFragment;Lcom/airbnb/android/models/CalendarSquare;)Lcom/airbnb/android/models/CalendarSquare;

    goto/16 :goto_39

    .line 158
    .end local v2    # "available":Z
    .end local v3    # "calendar":Ljava/util/Calendar;
    .end local v6    # "first":J
    .end local v8    # "last":J
    :cond_150
    invoke-virtual {v11}, Lcom/airbnb/android/models/CalendarSquare;->getReservation()Lcom/airbnb/android/models/SparseCalendarReservation;

    move-result-object v10

    .line 159
    .local v10, "res":Lcom/airbnb/android/models/SparseCalendarReservation;
    sget-object v13, Lcom/airbnb/android/models/ReservationStatus;->Accepted:Lcom/airbnb/android/models/ReservationStatus;

    invoke-virtual {v13}, Lcom/airbnb/android/models/ReservationStatus;->getStatus()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Lcom/airbnb/android/models/SparseCalendarReservation;->getStatus()Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 160
    .local v5, "confirmed":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/airbnb/android/fragments/ManageCalendarFragment$2;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    invoke-virtual {v13}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/airbnb/android/fragments/ManageCalendarFragment$2;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    iget-object v14, v14, Lcom/airbnb/android/fragments/ManageCalendarFragment;->mSquares:Lcom/airbnb/android/models/SquareMap;

    invoke-virtual {v10}, Lcom/airbnb/android/models/SparseCalendarReservation;->getId()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Lcom/airbnb/android/models/SquareMap;->reservationForId(J)Lcom/airbnb/android/models/Reservation;

    move-result-object v14

    new-instance v15, Lcom/airbnb/android/fragments/ManageCalendarFragment$2$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/airbnb/android/fragments/ManageCalendarFragment$2$1;-><init>(Lcom/airbnb/android/fragments/ManageCalendarFragment$2;)V

    move-object/from16 v0, p2

    invoke-static {v0, v13, v14, v5, v15}, Lcom/airbnb/android/views/CalendarPopupView;->createPopupView(Landroid/view/View;Landroid/content/Context;Lcom/airbnb/android/models/Reservation;ZLandroid/widget/PopupWindow$OnDismissListener;)Landroid/widget/PopupWindow;

    .line 167
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/airbnb/android/fragments/ManageCalendarFragment$2;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    invoke-virtual {v13, v10}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->setSelectedReservation(Lcom/airbnb/android/interfaces/Reservationable;)V

    goto/16 :goto_3c
.end method
