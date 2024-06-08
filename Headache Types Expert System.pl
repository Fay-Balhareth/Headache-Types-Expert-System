start_diagnosis :-
    welcome_message,
    q1.
    
q1:- 
    q1(Response),
    q1response(Response).

welcome_message :-
    write('----------------------------------------------------------------------------------------------------------------------------------------------------------------------'),nl,
    write('--------------------------------------------------  𝓦𝓮𝓵𝓬𝓸𝓶𝓮  𝓽𝓸  𝓠𝓾𝓲𝓬𝓴  𝓗𝓮𝓪𝓭𝓪𝓬𝓱𝓮  𝓓𝓲𝓪𝓰𝓷𝓸𝓼𝓲𝓼  --------------------------------------------------'), nl,
    write('----------------------------------------------------------------------------------------------------------------------------------------------------------------------'),nl,
    write('This expert system is intended to assist you in diagnosing your type of headache. We hope you respond with full credibility in order to get the right response.'),nl,
    write('⚠️ NOTE ⚠️ If you have a severe headache, we recommend that you go to the hospital 🏥 ..'), nl,nl.

q1(Response) :-
    write('Do you feel pain in your head? '),nl,
    write('1️⃣- NO'),nl,
    write('2️⃣- YES'),
    read(Response).

q1response(1) :-
    os.
q1response(2) :-
    write('Do you feel pain on one side of your head or both sides?'), nl,
    write('1️⃣- Both Sides'),nl,
    write('2️⃣- One Side'),
    read(Response2),
    q2response(Response2).
q1response(_) :-
    write('❌ 𝑰𝒏𝒗𝒂𝒍𝒊𝒅 𝒓𝒆𝒔𝒑𝒐𝒏𝒔𝒆 ❌'),nl,
    write('Please enter 1️⃣ or 2️⃣ only.'),
    nl,
    q1.

q2response(1) :-
    write('Did your symptoms develop slowly?'), nl,
    write('1️⃣- NO'),nl,
    write('2️⃣- YES'),
    read(Response3),
    q3response(Response3).
q2response(2) :-
    write('Does your headache worsen with a change in weather?'), nl,
    write('1️⃣- NO'),nl,
    write('2️⃣- YES'),
    read(Response8),
    q8response(Response8).
q2response(_) :-
    write('❌ 𝑰𝒏𝒗𝒂𝒍𝒊𝒅 𝒓𝒆𝒔𝒑𝒐𝒏𝒔𝒆 ❌ '),nl,
    write('Please enter 1️⃣ or 2️⃣ only.'),
    nl,
    q1response(2).

q3response(1) :-
    write('Do you have a fever, congestion, or both ? '), nl,
    write('1️⃣- NO'),nl,
    write('2️⃣- YES'),
    read(Response4),
    q4response(Response4).
q3response(2) :-  
    write('Does the headache increase when you are stressed ? '), nl,
    write('1️⃣- NO'),nl,
    write('2️⃣- YES'),
    read(Response6),
    q6response(Response6).
q3response(_) :-
    write('❌ 𝑰𝒏𝒗𝒂𝒍𝒊𝒅 𝒓𝒆𝒔𝒑𝒐𝒏𝒔𝒆 ❌ '),nl,
    write('Please enter 1️⃣ or 2️⃣ only.'),
    nl,
    q2response(1).

q4response(1) :-
    os1.
q4response(2) :-  
    write('Do you feel pain near your eyes ?  '), nl,
    write('1️⃣- NO'),nl,
    write('2️⃣- YES'),
    read(Response5),
    q5response(Response5).
q4response(_) :-
    write('❌ 𝑰𝒏𝒗𝒂𝒍𝒊𝒅 𝒓𝒆𝒔𝒑𝒐𝒏𝒔𝒆 ❌'),nl,
    write('Please enter 1️⃣ or 2️⃣ only.'),
    nl,
    q3response(1).

q5response(1) :-
    os1.
q5response(2) :-  
    nl, write('➡️ 𝑻𝒉𝒆 𝒕𝒚𝒑𝒆 𝒐𝒇 𝒉𝒆𝒂𝒅𝒂𝒄𝒉𝒆 𝒚𝒐𝒖 𝒔𝒖𝒇𝒇𝒆𝒓 𝒇𝒓𝒐𝒎 𝒊𝒔 : 𝓢𝓲𝓷𝓾𝓼 ✔️ '), nl,nl,
    st2,nl,
    m2,nl,
    survey,
    abort.
q5response(_) :-
    write('❌ 𝑰𝒏𝒗𝒂𝒍𝒊𝒅 𝒓𝒆𝒔𝒑𝒐𝒏𝒔𝒆 ❌ '),nl,
    write('Please enter 1️⃣ or 2️⃣ only.'),
    nl,
    q4response(2).

q6response(1) :-
    os1.
q6response(2) :-  
    write('Does your headache worsen with fatigue ? '), nl,
    write('1️⃣- NO'),nl,
    write('2️⃣- YES'),
    read(Response7),
    q7response(Response7).
q6response(_) :-
    write('❌ 𝑰𝒏𝒗𝒂𝒍𝒊𝒅 𝒓𝒆𝒔𝒑𝒐𝒏𝒔𝒆 ❌'),nl,
    write('Please enter 1️⃣ or 2️⃣ only.'),
    nl,
    q3response(2).

q7response(1) :-
    os1.
q7response(2) :-  
    nl,write('➡️ 𝑻𝒉𝒆 𝒕𝒚𝒑𝒆 𝒐𝒇 𝒉𝒆𝒂𝒅𝒂𝒄𝒉𝒆 𝒚𝒐𝒖 𝒔𝒖𝒇𝒇𝒆𝒓 𝒇𝒓𝒐𝒎 𝒊𝒔 : 𝓣𝓮𝓷𝓼𝓲𝓸𝓷 ✔️ '), nl,nl,
    st1,nl,
    m1,nl,
    survey,
    abort.
q7response(_) :-
    write('❌ 𝑰𝒏𝒗𝒂𝒍𝒊𝒅 𝒓𝒆𝒔𝒑𝒐𝒏𝒔𝒆 ❌'),nl,
    write('Please enter 1️⃣ or 2️⃣ only.'),
    nl,
    q6response(2).

q8response(1) :-
    os1.
q8response(2) :-  
    write('Do you experience lightheadness  ?  '), nl,
    write('1️⃣- NO'),nl,
    write('2️⃣- YES'),
    read(Response9),
    q9response(Response9).
q8response(_) :-
    write('❌ Invalid response ❌'),nl,
    write('Please enter 1️⃣ or 2️⃣ only.'),
    nl,
    q2response(2).

q9response(1) :-
    write('Do you experience restlessness ?  '), nl,
    write('1️⃣- NO'),nl,
    write('2️⃣- YES'),
    read(Response10),
    q10response(Response10).
q9response(2) :-  
    write('Do you find yourself sensitive to lights ?  '), nl,
    write('1️⃣- NO'),nl,
    write('2️⃣- YES'),
    read(Response11),
    q11response(Response11).
q9response(_) :-
    write('❌ 𝑰𝒏𝒗𝒂𝒍𝒊𝒅 𝒓𝒆𝒔𝒑𝒐𝒏𝒔𝒆 ❌'),nl,
    write('Please enter 1️⃣ or 2️⃣ only.'),
    nl,
    q8response(2).

q10response(1) :-
    os1.
q10response(2) :-  
    write('Do you have watery eyes or congestion ? '), nl,
    write('1️⃣- NO'),nl,
    write('2️⃣- YES'),
    read(Response12),
    q12response(Response12).
q10response(_) :-
    write('❌ 𝑰𝒏𝒗𝒂𝒍𝒊𝒅 𝒓𝒆𝒔𝒑𝒐𝒏𝒔𝒆 ❌'),nl,
    write('Please enter 1️⃣ or 2️⃣ only.'),
    nl,
    q9response(1).

q11response(1) :-
    os1.
q11response(2) :-  
    write('Are hormonal changes a triagger for your symptoms ?'), nl,
    write('1️⃣- NO'),nl,
    write('2️⃣- YES'),
    read(Response13),
    q13response(Response13).
q11response(_) :-
    write('❌ 𝑰𝒏𝒗𝒂𝒍𝒊𝒅 𝒓𝒆𝒔𝒑𝒐𝒏𝒔𝒆 ❌ '),nl,
    write('Please enter 1️⃣ or 2️⃣ only.'),
    nl,
    q9response(2).

q12response(1) :-
    os1.
q12response(2) :-  
    nl,write('➡️ 𝑻𝒉𝒆 𝒕𝒚𝒑𝒆 𝒐𝒇 𝒉𝒆𝒂𝒅𝒂𝒄𝒉𝒆 𝒚𝒐𝒖 𝒔𝒖𝒇𝒇𝒆𝒓 𝒇𝒓𝒐𝒎 𝒊𝒔 : 𝓒𝓵𝓾𝓼𝓽𝓮𝓻 ✔️ '), nl,nl,
    st3,nl,
    m3,nl,
    survey,
    abort.
q12response(_) :-
    write('❌ 𝑰𝒏𝒗𝒂𝒍𝒊𝒅 𝒓𝒆𝒔𝒑𝒐𝒏𝒔𝒆 ❌'),nl,
    write('Please enter 1️⃣ or 2️⃣ only.'),
    nl,
    q10response(2).

q13response(1) :-
    os1.
q13response(2) :-  
    nl,write('➡️ 𝑻𝒉𝒆 𝒕𝒚𝒑𝒆 𝒐𝒇 𝒉𝒆𝒂𝒅𝒂𝒄𝒉𝒆 𝒚𝒐𝒖 𝒔𝒖𝒇𝒇𝒆𝒓 𝒇𝒓𝒐𝒎 𝒊𝒔 : 𝓜𝓲𝓰𝓻𝓪𝓲𝓷𝓮 ✔️ '), nl,nl,
    st4,nl,
    m4,nl,
    survey,
    abort.
q13response(_) :-
    write('❌ 𝑰𝒏𝒗𝒂𝒍𝒊𝒅 𝒓𝒆𝒔𝒑𝒐𝒏𝒔𝒆 ❌'),nl,
    write('Please enter 1️⃣ or 2️⃣ only.'),
    nl,
    q11response(2).

os:- 
    write('⚠️ You might do not have any problem or the disease you have is out of our scope ⚠️'),nl,
    write('💌 We sincerely regret and hope that your health improves.'),
    nl,survey,
    abort.
os1:-
    write('⚠️ You might have some symptoms that could mean a certain disease that is out of our scope ⚠️'),nl,
    write('💌 Over-the-counter pain relievers like acetaminophen or ibuprofen can help alleviate the pain. '),
    nl,survey,
    abort.

m1:-
    write('💊 𝑻𝒆𝒏𝒔𝒊𝒐𝒏 𝒉𝒆𝒂𝒅𝒂𝒄𝒉𝒆 𝒎𝒆𝒅𝒊𝒄𝒂𝒕𝒊𝒐𝒏𝒔 𝒊𝒏𝒄𝒍𝒖𝒅𝒆 :'),nl,
    write('1️⃣ Over-the-counter pain relievers like acetaminophen -Tylenol-, ibuprofen -Advil-.'),nl, 
    write('2️⃣ Aspirin can be effective. '),nl. 
st1:- 
    write('⭐ 𝑺𝒆𝒍𝒇-𝒕𝒓𝒆𝒂𝒕𝒎𝒆𝒏𝒕 𝒇𝒐𝒓 𝑻𝒆𝒏𝒔𝒊𝒐𝒏 𝒉𝒆𝒂𝒅𝒂𝒄𝒉𝒆𝒔 𝒄𝒂𝒏 𝒊𝒏𝒄𝒍𝒖𝒅𝒆 :'),nl,
    write('1️⃣ Applying a warm or cold compress to the affected area. '),nl, 
    write('2️⃣ Practicing relaxation techniques such as deep breathing or meditation, getting regular exercise. '),nl, 
    write('3️⃣ Maintaining good posture, and managing stress levels through techniques like regular sleep, staying hydrated. '),nl, 
    write('4️⃣ Taking breaks from activities that may trigger headaches. '),nl.

m2:-
    write('💊 𝑺𝒊𝒏𝒖𝒔 𝒉𝒆𝒂𝒅𝒂𝒄𝒉𝒆 𝒎𝒆𝒅𝒊𝒄𝒂𝒕𝒊𝒐𝒏𝒔 𝒊𝒏𝒄𝒍𝒖𝒅𝒆 : '),nl,
    write('1️⃣ Nasal decongestants or saline nasal sprays may also provide relief by reducing congestion.'),nl, 
    write('2️⃣ Over-the-counter pain relievers like acetaminophen or ibuprofen can help alleviate the pain. '),nl. 
st2:- 
    write('⭐ 𝑺𝒆𝒍𝒇-𝒕𝒓𝒆𝒂𝒕𝒎𝒆𝒏𝒕 𝒇𝒐𝒓 𝑺𝒊𝒏𝒖𝒔 𝒉𝒆𝒂𝒅𝒂𝒄𝒉𝒆𝒔 𝒄𝒂𝒏 𝒊𝒏𝒄𝒍𝒖𝒅𝒆 :'),nl,
    write('1️⃣ Using a humidifier or taking a hot shower to help relieve congestion.'),nl, 
    write('2️⃣ Applying warm compresses to the face.'),nl, 
    write('3️⃣ Practicing nasal irrigation with a saline solution.'),nl, 
    write('4️⃣ Staying hydrated and getting plenty of rest. '),nl.

m3:-
    write('💊 𝑪𝒍𝒖𝒔𝒕𝒆𝒓 𝒉𝒆𝒂𝒅𝒂𝒄𝒉𝒆 𝒎𝒆𝒅𝒊𝒄𝒂𝒕𝒊𝒐𝒏𝒔 𝒊𝒏𝒄𝒍𝒖𝒅𝒆 :'),nl,
    write('1️⃣ Verapamil and lithium. '),nl, 
    write('2️⃣ Possibly effective drugs are gabapentin, topiramate, divalproex sodium, and melatonin. '),nl. 
st3:- 
    write('⭐ 𝑺𝒆𝒍𝒇-𝒕𝒓𝒆𝒂𝒕𝒎𝒆𝒏𝒕 𝒇𝒐𝒓 𝑪𝒍𝒖𝒔𝒕𝒆𝒓 𝒉𝒆𝒂𝒅𝒂𝒄𝒉𝒆𝒔 𝒄𝒂𝒏 𝒊𝒏𝒄𝒍𝒖𝒅𝒆 :' ),nl,
    write('1️⃣ Avoiding triggers like alcohol or strong smells. '),nl, 
    write('2️⃣ Practicing relaxation techniques such as deep breathing or meditation.'),nl, 
    write('3️⃣ Applying cold or hot packs to the affected area. '),nl, 
    write('4️⃣ Maintaining a regular sleep schedule. '),nl,
    write('5️⃣ Avoid smoking. '),nl.

m4:-
    write('💊 𝑴𝒊𝒈𝒓𝒂𝒊𝒏𝒆 𝒉𝒆𝒂𝒅𝒂𝒄𝒉𝒆 𝒎𝒆𝒅𝒊𝒄𝒂𝒕𝒊𝒐𝒏𝒔 𝒊𝒏𝒄𝒍𝒖𝒅𝒆 :'),nl,
    write('1️⃣ Over-the-counter pain relievers like ibuprofen or acetaminophen, triptans, anti-nausea medications. '),nl, 
    write('2️⃣ Preventive medications like beta-blockers or antidepressants.  '). 
st4:- 
    write('⭐ 𝑺𝒆𝒍𝒇-𝒕𝒓𝒆𝒂𝒕𝒎𝒆𝒏𝒕 𝒇𝒐𝒓 𝑴𝒊𝒈𝒓𝒂𝒊𝒏𝒆 𝒉𝒆𝒂𝒅𝒂𝒄𝒉𝒆𝒔 𝒄𝒂𝒏 𝒊𝒏𝒄𝒍𝒖𝒅𝒆 :'),nl,
    write('1️⃣ Identifying and avoiding triggers. '),nl, 
    write('2️⃣ Finding a quiet, dark environment to rest in during an attack. '),nl, 
    write('3️⃣ Practicing stress management techniques such as relaxation exercises or yoga.  '),nl, 
    write('4️⃣ Maintaining a regular sleep schedule, staying hydrated.  '),nl,
    write('5️⃣ Applying a cold or warm compress to the head or neck.'),nl.

survey:-
nl,write('💌 𝑻𝒉𝒂𝒏𝒌 𝒚𝒐𝒖 𝒇𝒐𝒓 𝒖𝒔𝒊𝒏𝒈 𝒐𝒖𝒓 𝒔𝒚𝒔𝒕𝒆𝒎 💌'),nl,
write('We hope you can help us evaluate the system by filling out the attached survey :'),nl,
write(' https://docs.google.com/forms/d/e/1FAIpQLSduhpH5rdS1Ej70DlaQeq4zV1OMWLjNGn02wETL8WLIyp3QXg/viewform?usp=sf_link '),nl,nl,nl.